VERSION=`deno task version` &&
# package.jsonのバージョン番号入れ替え
DIRNAME=./dist/$VERSION/vscode
FILENAME=indentdown-$VERSION.vsix
if [ -e $FILENAME ]
then
  echo "$FILENAME already exists (skipped)"
  exit
fi
mkdir -p $DIRNAME &&
deno task build &&
deno -A --unstable-unsafe-proto npm:@vscode/vsce package &&
mv ./$FILENAME $DIRNAME
