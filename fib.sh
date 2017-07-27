#!/bin/bash

# Capture arguments 
if [ $# = "0" ]; then
  echo Please provide a number as an argument
  exit 1
elif [ $# = "1" ]; then
  seed=1
  target=$1
  echo Using 1 as seed
else
  seed=$1
  target=$2
fi

# Initialization of pointers
n1=$seed
n2=1
count=1
current=$seed

while [ $current -lt $target ]; do
  echo $count: $current
  let current=($current + $n2)
  let n2=$n1
  let n1=$current
  let count=$count+1
done

echo $current

[ $current == $target ] && echo Correct! Score: $count  || echo No
