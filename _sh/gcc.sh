
cmd="gcc"

type="c"

cd _$type

build=".build"

if [ $# -eq 0 ]; then
    filename="_"
else
    filename="$1"
fi

mkdir -p $build

$cmd $filename.$type -o $build/$filename

$build/$filename
