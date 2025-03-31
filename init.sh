
# workspace

export WORK=$(pwd)

cd ..

# root (parent of workspace)

export ROOT=$(pwd)

# scripts

export scripts=$ROOT/scripts

export PATH=$PATH:$scripts/bat # Batch (Windows)
export PATH=$PATH:$scripts/pwsh # PowerShell (Windows)
export PATH=$PATH:$scripts/py # Python
export PATH=$PATH:$scripts/sh # Shell

# path

export snippets=$ROOT/snippets
export projects=$ROOT/projects
