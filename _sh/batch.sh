
if [ -z "$1" ]; then
    bin="_"
else
    bin="$1"
fi

_batch/$bin.bat
