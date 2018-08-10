#!/bin/bash
for p in perfects/*; do
name=${p##*/}
value=$(cat $p)
shortcuts create "$name" "$value"
echo "Adding shortcut for Perfect $name with value $value"
sleep .2
done

for t in trashes/*; do
name=${t##*/}
value=$(cat $t)
echo "Adding shortcut for Trash $name with value $value"
shortcuts create "$name" "$value"
sleep .2
done