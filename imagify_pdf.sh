#!/bin/sh

TEMP=$(mktemp -d)
pdftoppm $1 $TEMP/$2 -png
convert -format pdf $TEMP/*.png $2.pdf

