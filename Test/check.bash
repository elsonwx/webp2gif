#!/bin/bash
abs_path=$(readlink -f "$0")
BASEDIR=$(dirname "$abs_path")
cd $BASEDIR
webp2gif="$BASEDIR/../webp2gif"

set -e

echo "downloading example 1.webp"
wget -q https://mathiasbynens.be/demo/animated-webp-supported.webp -O 1.webp
echo "converting example 1.webp"
bash "$webp2gif" 1.webp &>/dev/null

echo "downloading example 2.webp"
wget -q https://res.cloudinary.com/demo/image/upload/fl_awebp/bored_animation.webp -O 2.webp
echo "converting example 2.webp"
bash "$webp2gif" 2.webp &>/dev/null

echo "downloading example 3.webp"
wget -q https://res.cloudinary.com/demo/image/upload/fl_awebp/cell_animation.webp -O 3.webp
echo "converting example 3.webp"
bash "$webp2gif" 3.webp &>/dev/null

echo -e "\n\ncongratulations!,all convert examples are successed!"
