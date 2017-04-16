# Usage

    cfn-check(){
        if [ -f "$1" ]; then
            echo "Mapping file $(readlink -f "$1")"
            echo "          to $1"
            arg1="$(readlink -f "$1"):/$1"
        else
            arg1="/tmp:/tmp"
        fi
        docker run --rm -it \
            -v "$arg1" \
            volekrfr/cfn-check "$@"
    }
