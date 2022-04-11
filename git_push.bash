git add ./project2
git status
echo "Provide commit message"
read commitMsg
git commit -m "$commitMsg"
git push git@github.com:yonghyeon0223/DATA1001.git main