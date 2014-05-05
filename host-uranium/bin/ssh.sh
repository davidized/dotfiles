#!/bin/bash
# Originally from: http://www.linuxsysadmintutorials.com/multiple-ssh-client-configuration-files/
# Allows me to have two ssh config files - .ssh/config and .secret/ssh/config

ssh() {
    case "$(uname -s)" in
        Linux)
            tmp_fifo=$(mktemp --suffix=._ssh_fifo)
            ;;
        Darwin)
            tmp_fifo=$(mktemp -t ._ssh_fifo)
            ;;
        *)
            echo 'unsupported OS'
            exit
            ;;
    esac

    mkfifo "$tmp_fifo"
    cat ~/.ssh/config $SECRETFILES/ssh/config >"$tmp_fifo" 2>/dev/null &
    /usr/bin/ssh -F "$tmp_fifo" "$@"
    rm "$tmp_fifo"
}

ssh $*
