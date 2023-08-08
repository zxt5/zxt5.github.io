#!/bin/bash
mv Xintong_Zhou.html index.html

file_path="./index.html"
line_number="5"  # 将n替换为实际的行号
line_to_insert="<link rel="icon" href="uw.png" type="image/x-icon">"

sed -i "${line_number}i${line_to_insert}" "$file_path"
git add .
git commit -am "update"
git push