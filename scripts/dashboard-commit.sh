#!/bin/sh

print_help () {
  echo "Usage: `basename $0` [options]"
  echo -e "\nOptions:\n"
  echo "  -od, --out-dir      Dashboards output dir."
	echo "  -ue, --user-email   Git user email."
	echo "  -un, --user-name    Git user name."
  exit 1
}

if [ $# -lt 6 ]; then
  print_help
fi

while [ $# -gt 0 ]; do
	case "$1" in
		-od|--out-dir)
			out_dir="$2"
			shift
		;;
		-ue|--user-email)
			user_email="$2"
			shift
		;;
		-un|--user-name)
			user_name="$2"
			shift
		;;
		*)
			print_help
		;;
	esac
	shift
done

cd "$out_dir"

if [[ "$(ls ./)" && "$(git status --porcelain | grep -v ' D ')" ]]; then
	git config user.email "$user_email"
  git config user.name "$user_name"
	git add .
	git commit -m "[$JOB_NAME][#$BUILD_NUMBER] Export auto commit"
	git push origin main
else
	echo "Sorry, no dashboards to commit this time..."
fi
