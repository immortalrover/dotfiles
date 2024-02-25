if status is-interactive
    # Commands to run in interactive sessions can go here
end

set -x EDITOR vim
set -x GPG_TTY $(tty)

function ya
    set tmp (mktemp -t "yazi-cwd.XXXXX")
    yazi $argv --cwd-file="$tmp"
    if set cwd (cat -- "$tmp"); and [ -n "$cwd" ]; and [ "$cwd" != "$PWD" ]
        cd -- "$cwd"
    end
    rm -f -- "$tmp"
end
