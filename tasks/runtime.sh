VERSION=`deno task version` &&
DIRNAME=./dist/$VERSION/runtime
FILENAME=$DIRNAME/Indentdown.ts
if [ -e $FILENAME ]
then
  echo "$FILENAME already exists (skipped)"
  exit
fi
mkdir -p $DIRNAME &&
sed '/^ *\/\//d' ./src/Indentdown.ts > $FILENAME &&
sed -i "1i/* Indentdown $VERSION - https:\/\/indentdown.deno.dev */" $FILENAME
