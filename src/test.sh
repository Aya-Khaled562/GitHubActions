#!/bin/bash

#src/tet.sh
EXPECTED="Hello, Test!"

OUTPUT = $(node -e "console.log(require('./src/app')('Test'))")

if ["$OUTPUT"== "$EXPECTED"]; then
echo "Test passed!"
exist 0

else
echo "Test failed! Expected `$EXPECTED` but got '$OUTPUT'"

exist 1

fi