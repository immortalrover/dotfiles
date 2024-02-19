if status is-interactive
    # Commands to run in interactive sessions can go here
end

set -x EDITOR vim
set -x GPG_TTY $(tty)
