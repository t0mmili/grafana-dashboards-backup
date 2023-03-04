#!/bin/sh

print_help () {
	echo "Usage: `basename $0` [options]"
	echo -e "\nOptions:\n"
	echo "  -sf, --state-file   Terraform state file location."
	echo "  -od, --out-dir      Dashboards output dir."
	exit 1
}

if [ $# -lt 4 ]; then
	print_help
fi

while [ $# -gt 0 ]; do
	case "$1" in
		-sf|--state-file)
			tf_state="$2"
			shift
		;;
		-od|--out-dir)
			out_dir="$2"
			shift
		;;
		*)
			print_help
		;;
	esac
	shift
done

dashboards_title=$(terraform output -json -no-color -state="$tf_state" | jq -j '.grafana_dashboards.value.title')
dashboards_config=$(terraform output -json -no-color -state="$tf_state" | jq -j '.grafana_dashboards.value.config')
counter=$(echo $dashboards_title | jq -j 'length')

if [ $counter -gt 0 ]; then
	i=0
	while [ $i -lt $counter ]; do
		title=$(echo $dashboards_title | jq -j --arg i "$i" '.[$i | tonumber] | gsub("\\(|\\)|\\[|\\]";"") | gsub("_|-";" ") | gsub("\\s{2,}";" ") | gsub("\\s";"-") | ascii_downcase')
		config=$(echo $dashboards_config | jq -j --arg i "$i" '.[$i | tonumber]')
		uid=$(echo $config | jq -j '.uid')
		echo $config > "$out_dir$([ ${out_dir#${out_dir%?}} != '/' ] && printf '/')$title.json"
		echo "Saved dashboard with uid=$uid to file $title.json"
		let "i+=1"
	done
else
  echo "Sorry, no dashboards to export this time..."
fi
