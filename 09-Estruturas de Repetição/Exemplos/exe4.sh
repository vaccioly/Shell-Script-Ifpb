#!/bin/bash

for x in $(ls); do
	cat $x | wc -l
done
