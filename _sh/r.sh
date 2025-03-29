
if [ -z "$1" ]; then
    bin="_"
else
    bin="$1"
fi

rscript _r/$bin.r
