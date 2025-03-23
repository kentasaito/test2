git checkout main &&
git merge --squash dev &&
deno task test &&
git add -A &&
git commit --allow-empty-message -m '' &&
git branch -D dev &&
git branch dev &&
git checkout dev
