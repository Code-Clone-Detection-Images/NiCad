#!/bin/sh
NICAD_LANGUAGE="$2"
cd $HOME/NiCad-6.2
# if the language is empty, assume C
echo "./nicad6 functions \"${NICAD_LANGUAGE:?Please pass on the language (c, java,...)}\" \"$1\""
./nicad6 functions "$NICAD_LANGUAGE" "$1"

# move information up to $1
cp -r "$HOME/data/sub_functions-blind-clones" "$1"

echo "[Logs] -----------------------------------------------"
cat /home/nicad-user/data/*.log

echo "[Output] See: \"sub_functions-blind-clones/sub_functions-blind-clones-0.30-classes-withsource.html\""