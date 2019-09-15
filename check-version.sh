function version_gt() { test "$(printf '%s\n' "$@" | sort -V | head -n 1)" != "$1"; }

if version_gt $1 $2; then
        echo "$1"
   else
        echo "$2"
fi
