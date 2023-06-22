#!/bin/sh

print_help () {
  echo "Usage: `basename $0` [options]"
  echo -e "\nOptions:\n"
  echo "  -d, --dir    Terraform scripts root dir."
  echo "  -v, --vars   Terraform input variables."
  exit 1
}

if [ $# -lt 4 ]; then
  print_help
fi

while [ $# -gt 0 ]; do
	case "$1" in
		-d|--dir)
			tf_dir="$2"
			shift
		;;
		-v|--vars)
			tf_vars="$2"
			shift
		;;
		*)
			print_help
		;;
	esac
	shift
done

cd "$tf_dir"

terraform init -input=false -no-color
terraform plan -input=false -no-color -out=tfplan $([ ! -z ${tf_vars#${tf_vars%?}} ] && printf "$tf_vars")
terraform apply -input=false -auto-approve -no-color tfplan
