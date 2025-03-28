
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

if git clone https://github.com/kendono/kendono .repair; then

rm -rf .git
mv .repair/.git .git
rm -rf .repair

sync $@

cd .obsidian && sync

fi
