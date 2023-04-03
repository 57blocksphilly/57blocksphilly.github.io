#!/usr/bin/env bash -eux

image=57blocks-website
container_mount_path=/website
root="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )"

printf "building image...${image}\n"
docker build -t ${image} ${root}
printf "done\n"

for i in "$@"
do
  case $i in
    "shell")
      docker run -ti --rm \
        -w ${container_mount_path} \
        -p "1313:1313" \
        -v "${root}:${container_mount_path}" \
        --entrypoint="/bin/bash" \
        ${image}
    ;;
    "run")
      docker run -ti --rm \
        -w ${container_mount_path} \
        -p "1313:1313" \
        -v "${root}:${container_mount_path}" \
        ${image}
    ;;
    *)
      # unmatched argument
      printf "\n\n"
      printf "run like:  bash run.sh shell"
      printf "valid commands are: shell, run\n"
      printf "\n\n"
      exit 1
    ;;
  esac
done
