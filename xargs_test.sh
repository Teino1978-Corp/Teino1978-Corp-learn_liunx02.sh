#!/bin/bash

find . -type f | grep -vE "^./.git|^./tmp" | xargs -I {} chmod 660 {}
find . -type d | grep -vE "^./.git|^./tmp|^.$" | xargs -I {} chmod 770 {}

head -n 100 tutorial_1209.csv | grep -o "^[0-9]\+" | xargs -n1 sh user_size.sh > size.csv