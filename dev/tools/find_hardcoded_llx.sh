#!/bin/bash

keywords="from|update|table|low_priority|ignore"

if [ $# -eq 0 ]
then
	dir="./"
else
	dir="$1"
fi

dirLastIndex=${#1}-1

if [ "${dir:$dirLastIndex:1}" != "/" ]
then
	dir="$dir/"
fi

find $dir -type f -name '*.php' -exec grep --color -PHni "^([^\/]|\/(?!\/))*($keywords)\s+llx_" {} \;
