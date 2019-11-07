#!/bin/bash

for x in $(ls); do
	[ -f $x ] && wc $x
done
