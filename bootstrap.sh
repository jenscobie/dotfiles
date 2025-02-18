#!/usr/bin/env bash

for dir in */
do
  sh ./"$dir"bootstrap.sh
done
