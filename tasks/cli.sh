VERSION=`deno task version` &&
DIRNAME=./dist/$VERSION/cli
FILENAME=$DIRNAME/cli.ts
if [ -e $FILENAME ]
then
  echo "$FILENAME already exists (skipped)"
  exit
fi
mkdir -p $DIRNAME &&
sed "/\$VERSION/$VERSION/" ./src/cli.ts > $FILENAME
