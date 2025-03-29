
cd _rs

if [ $# -eq 0 ]; then
    filename="_"
else
    filename=$1
fi

target="target"

mkdir -p $target

rustc $filename.rs -o $target/$filename

$target/$filename
