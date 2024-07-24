#!/bin/bash

MSG=`zenity --entry --text="gh-pages commit msg:" --entry-text="v$1"`

if [ -z "$MSG" ]; then
  exit 1
fi

echo " --> adding \"all\" ..."
git add --all

echo " --> committing with msg: $MSG"
git commit -am "$MSG"

echo " --> pushing to main branch"
git push origin main
