if [ -n "`git status --porcelain`" ]
then
  echo 'You have uncommitted changes.'
  exit 1
fi
CURRENTVERSION=`deno task version` &&
echo Current version: $CURRENTVERSION &&
read -p "New version: " NEWVERSION &&
sed -i 's/  "version": "'$CURRENTVERSION'"/  "version": "'$NEWVERSION'"/' ./deno.json &&
sed -i 's/dist\/'$CURRENTVERSION'/dist\/'$NEWVERSION'/' ./deno.json &&
sed -i 's/  "version": "'$CURRENTVERSION'"/  "version": "'$NEWVERSION'"/' ./package.json &&
sed -i 's/dist\/'$CURRENTVERSION'/dist\/'$NEWVERSION'/' ./package.json &&
deno task browser
deno task runtime
deno task cli
deno task vscode
deno task commit
deno task merge
git push origin main
git tag $NEWVERSION
git push origin $NEWVERSION
git checkout dev
