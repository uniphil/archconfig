#!/usr/bin/env bash
set -e

function aur_install {
  package=$1

  echo "dowloading $package..."
  curl -L -O https://aur.archlinux.org/packages/${package:0:2}/$package/$package.tar.gz  

  echo "extracting $package..."
  tar -xzf $package.tar.gz

  echo "installing $package..."
  cd $package/
    makepkg -s
    sudo pacman -U *.pkg.tar.xz
  cd ../
}


aur_install package-query
aur_install yaourt
