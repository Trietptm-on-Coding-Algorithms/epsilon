#!/bin/sh

FILE="sol.js"

# Check for '#!' interpreter line: don't allow it to prevent teams
# from passing options to the interpreter.
if grep '^#!' "$FILE" >/dev/null 2>&1 ; then
    echo "Error: interpreter statement(s) found:"
    grep -n '^#!' "$FILE"
    exit 1
fi

# Check syntax
js -c "$FILE"
exit $?

