
cd $1

if [ $# -gt 1 ]; then
    bin=$2
else
    bin="cmake"
fi

build=".build"

cmake -S . -B $build &&
cmake --build $build &&
$build/$bin
