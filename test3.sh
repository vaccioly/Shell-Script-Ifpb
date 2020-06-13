#!/bin/bash

bus=( setusa medusa reunidas transn )

echo ${bus[@]}
echo ${bus[*]:0:2}
echo ${bus[*]:2}

bus=( ${bus[*]:0:2} novo  ${bus[*]:2})

echo ${bus[@]}

