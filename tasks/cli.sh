VERSION=`deno task version` &&
DIRNAME=./dist/$VERSION/cli &&
FILENAME=$DIRNAME/indentdown.ts &&
if [ -e $FILENAME ]
then
  echo "$FILENAME already exists (skipped)"
  continue
fi
mkdir -p $DIRNAME &&
sed "s/Indentdown \$VERSION/Indentdown $VERSION/" ./src/cli.ts > $FILENAME &&
sed -i "s/\.\/Indentdown\.ts/jsr:@kenta\/test2@$VERSION/" $FILENAME &&
sed -i "1i/* Indentdown $VERSION - https:\/\/indentdown.deno.dev */" $FILENAME
