if status is-interactive
    # Commands to run in interactive sessions can go here
end

set -x EDITOR vim
set -x GPG_TTY $(tty)
set -x http_proxy http://127.0.0.1:20171
set -x https_proxy http://127.0.0.1:20171
set -x PATH /opt/riscv/bin $PATH


function yy
    set tmp (mktemp -t "yazi-cwd.XXXXX")
    yazi $argv --cwd-file="$tmp"
    if set cwd (cat -- "$tmp"); and [ -n "$cwd" ]; and [ "$cwd" != "$PWD" ]
        cd -- "$cwd"
    end
    rm -f -- "$tmp"
end

# pnpm
set -gx PNPM_HOME "/home/rover/.local/share/pnpm"
if not string match -q -- $PNPM_HOME $PATH
    set -gx PATH "$PNPM_HOME" $PATH
end
# pnpm endif status is-interactive
# Commands to run in interactive sessions can go here
# end
