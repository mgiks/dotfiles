#! /usr/bin/env bash
source "$(dirname "$0")"/.gh_token

if [ -z "${GH_TOKEN:-}" ]; then
    echo .gh_token file is missing
    exit 1
fi

echo Checking whether pacman-packages gist exists...
pacman_packages_gist=$(gh gist list | grep pacman-packages | head -n1 | awk '{ print $1 }')
file='pacman-packages'

if [ -z "${pacman_packages_gist:-}" ]; then
    touch $file

    pacman -Qe | awk '{ print $1 }' >$file
    echo Creating pacman-packages gist...
    gh gist create $file >/dev/null

    rm $file
fi

gist_id=$(gh gist list | grep $file | head -n1 | awk '{print $1}')

echo Updating pacman-packages gist...
gh gist edit "$gist_id" <(pacman -Qe | awk '{print $1}')
