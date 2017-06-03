#!/bin/bash

# Constants ############################################################################################################

read -d  USAGE <<-END
USAGE: $0 <clean|compile|watch|help> (--view)
END

# Helper Functions #####################################################################################################

function cancel {
    usage; echo; echo $@
    exit 1
}

function compile-ly {
    BASE_NAME=$(basename -s .ly $1)
    DIR_NAME=$(dirname $1 | sed "s@./src/scores/@@")
    
    mkdir -p "dist/$DIR_NAME"
    lilypond -I "$PWD/src/includes" -I "$PWD/src/pieces" -o "dist/$DIR_NAME/$BASE_NAME" $1
    
    if [[ "$VIEW" == "YES" ]]; then
        open -a "/Applications/Google Chrome.app" -g "dist/$DIR_NAME/$BASE_NAME.pdf"
    fi
}

function usage {
    echo "$USAGE"
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
        
        find src/scores -name "*.ly" | grep -v includes | grep "$PATTERN" | while read FILE; do
            compile-ly $FILE
        done
    done
}

function command-watch {
    fswatch -r src/scores -i '*.ly$' -e "includes" | while read FILE; do
        FILE=$(echo $FILE | sed "s@$PWD@.@")
        compile-ly $FILE
    done
}

# Initialization #######################################################################################################

COMMAND="$1"
shift

[[ "$COMMAND" == "" ]] && COMMAND="help"

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
