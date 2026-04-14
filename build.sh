#!/bin/bash

# Constants ############################################################################################################

read -d  USAGE <<-END
USAGE: $0 <clean|compile|help|watch> (--view)
END


# Helper Functions #####################################################################################################

function cancel {
    echo "$USAGE"; echo; echo $@
    exit 1
}

function check-dependencies {
    if ! which -s "fswatch"; then
        brew install fswatch
    fi

    if ! which -s "lilypond"; then
        brew install lilypond
    fi
}

function compile-ly {
    BASE_NAME=$(basename -s .ly $1)
    DIR_NAME=$(dirname $1 | sed "s@./src/scores/@@")

    mkdir -p "dist/$DIR_NAME"
    lilypond -I "$PWD/src/includes" -I "$PWD/src/pieces" -o "dist/$DIR_NAME/$BASE_NAME" $1

    if [[ "$VIEW" == "YES" ]]; then
        open -a "/Applications/Safari.app" -g "dist/$DIR_NAME/$BASE_NAME.pdf"
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

        find src/scores -name "*.ly" | grep -v includes | grep "\.ly$" | grep "$PATTERN" | while read FILE; do
            compile-ly "./$FILE"
        done
    done
}

function command-watch {
    CURRENT_DIR=$(dirname $0)
    fswatch -r src/scores | egrep '\.ly$' --line-buffered | grep -v 'includes' --line-buffered | while read FILE; do
        FILE=$(echo $FILE | sed 's@.*/src/scores/\(.*\)$@./src/scores/\1@')
        compile-ly $FILE
    done
}

# Initialization #######################################################################################################

check-dependencies

COMMAND="$1"
shift

[[ "$COMMAND" == "" ]] && COMMAND="help"

PATTERNS=()
HELP="NO"
VIEW="NO"

while [[ "$1" != "" ]]; do
    case "$1" in
        -h|-?|--help) HELP="YES";;
        -v|--view) VIEW="YES";;
        *) PATTERNS+=($1);;
    esac
    shift
done

[[ "$HELP" == "YES" ]] && usage

case "$COMMAND" in
    clean) command-clean;;
    compile) command-compile;;
    help|-h|-?|--help) usage;;
    watch) command-watch;;
    *) cancel "Unrecognized command: $COMMAND"
esac
