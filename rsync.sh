
# workspace

sync() {
if [ $# -eq 0 ]; then
    msg="sync repo"
else
    msg="$@"
fi

git add .
git commit -am "$msg"

git pull
git push
}

git clone https://github.com/kendono/kendono .repair

cd .repair && git pull && cd ..

rm -rf .git
cp -r .repair/.git .git

sync $@

# .obsidian

cd .obsidian

git clone https://github.com/kendono/.obsidian .repair

cd .repair && git pull && cd ..

rm -rf .git
cp -r .repair/.git .git

sync
