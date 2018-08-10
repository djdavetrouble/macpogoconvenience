#!/bin/bash
for p in perfects/*; do
name=${p##*/}
value=$(cat $p)
shortcuts create "$name" "$value"
echo "$name" "$value"
sleep .2
done

for t in trashes/*; do
name=${t##*/}
value=$(cat $t)
echo "$t" "$value"
shortcuts create "$name" "$value"
sleep .2
done