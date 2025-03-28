
sync() {
if [ $# -eq 0 ]; then
    msg="sync repository"
else
    msg="$@"
fi

git add .
git commit -am "$msg"

git pull
git push
}

sync $@

cd .obsidian && sync $@ && cd ..
cd .vscode && sync $@ && cd ..
