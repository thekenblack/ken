
if git clone https://github.com/kendono/kendono .repair; then

rm -rf .git
mv .repair/.git
rm -rf .repair

if [ $# -eq 0 ]; then
    msg="sync repository"
else
    msg="$@"
fi

git add .
git commit -am "$msg"

git pull
git push

fi
