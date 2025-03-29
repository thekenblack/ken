
if [ -z "$1" ]; then
    bin="_"
else
    bin="$1"
fi

_pwsh/$bin.ps1
