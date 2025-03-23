VERSION=`deno task version` &&
DIRNAME=./dist/$VERSION/browser
FILENAME=$DIRNAME/indentdown-$VERSION.js
if [ ! -e $FILENAME ]
then
  mkdir -p $DIRNAME &&
  deno -A npm:esbuild@0.25.1 ./src/Indentdown.ts > $FILENAME &&
  sed -i "1i/* Indentdown $VERSION - https:\/\/indentdown.deno.dev */" $FILENAME &&
  deno fmt $FILENAME
fi
