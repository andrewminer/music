#!/bin/bash

fswatch -r src -i '*.ly$' -e "includes" | while read FILE; do
    BASE_NAME=$(basename -s .ly $FILE)
    DIR_NAME=$(dirname $FILE | sed "s@$PWD/src/@@")

    mkdir -p "dist/$DIR_NAME"
    lilypond -I "$PWD/src/includes" -o "dist/$DIR_NAME/$BASE_NAME" $FILE
    open -a "/Applications/Google Chrome.app" -g "dist/$DIR_NAME/$BASE_NAME.pdf"
done

