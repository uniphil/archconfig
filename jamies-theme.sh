#!/usr/bin/env bash
set -e

theme_patch="Index: openbox-3/themerc
===================================================================
--- openbox-3/themerc
+++ openbox-3/themerc
@@ -13,9 +13,9 @@
 
 #Windows
 
 ##padding
+padding.width:                                  2
-padding.width:                                  9
 
 ##title colours
 window.active.title.bg:                         Solid Flat
 window.active.title.bg.color:                   #404040
"

original_dir=$(pwd)
  mkdir -p ~/.local/share/themes && cd ~/.local/share/themes
  git clone https://github.com/jameh/flat-google-openbox-theme.git flat-google
  cd flat-google/openbox-3
  echo "$theme_patch" | git apply
cd $original_dir
