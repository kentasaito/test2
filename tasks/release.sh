CURRENTVERSION=`deno task version` &&
echo Current version: $CURRENTVERSION &&
read -p "New version: " NEWVERSION &&
sed -i 's/  "version": "'$CURRENTVERSION'"/  "version": "'$NEWVERSION'"/' ./deno.json &&
deno task transpile
