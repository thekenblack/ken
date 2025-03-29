
if [ -z "$1" ]; then
    bin="_"
else
    bin="$1"
fi

py _py/$bin.py
