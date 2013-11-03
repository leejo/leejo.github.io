#!/bin/bash
cd /Users/leejohnson/working/leejo.github.io
date > auto_gen.html
git add auto_gen.html
git commit -m"auto site gen"
git push
