#!/bin/bash

# Helper Functions #####################################################################################################

function cancel {
    # TODO(aminer): implement
    exit 0
}

function compile-ly {
    BASE_NAME=$(basename -s .ly $1)
    DIR_NAME=$(dirname $1 | sed "s@./src/@@" | sed "s@$PWD/src/@@")

    mkdir -p "dist/$DIR_NAME"
    lilypond -I "$PWD/src/includes" -o "dist/$DIR_NAME/$BASE_NAME" $1
    
    if [[ "$VIEW" == "YES" ]]; then
        open -a "/Applications/Google Chrome.app" -g "dist/$DIR_NAME/$BASE_NAME.pdf"
    fi
}

function usage {
    # TODO(aminer): implement
    exit 0
}

# Command Functions ####################################################################################################

function command-clean {
    rm -rf dist 2>/dev/null
}

function command-compile {
    [[ ${#PATTERNS[*]} == 0 ]] && PATTERNS=(".*")
    
    while true; do
        PATTERN=${PATTERNS[0]}
        [[ "$PATTERN" == "" ]] && break
        PATTERNS=(${PATTERNS[@]:1})
        
        find . -name "*.ly" | grep -v includes | grep "$PATTERN" | while read FILE; do
            compile-ly $FILE
        done
    done
}

function command-watch {
    fswatch -r src -i '*.ly$' -e "includes" | while read FILE; do
        compile-ly $FILE
    done
}

# Initialization #######################################################################################################

COMMAND="$1"
shift

[[ "$COMMAND" == "" ]] && COMMAND="compile"

PATTERNS=()
VIEW="NO"

while [[ "$1" != "" ]]; do
    case "$1" in
        -v|--view) VIEW="YES";;
        *) PATTERNS+=($1);;
    esac
    shift
done

case "$COMMAND" in
    -h|--help|help) usage;;
    clean) command-clean;;
    compile) command-compile;;
    watch) command-watch;;
    *) cancel "Unrecognized command: $COMMAND"
esac
