#!/bin/bash
mv Xintong_Zhou.html index.html

file_path="./index.html"
line_number="5"  # 将n替换为实际的行号
line_to_insert="<link rel="icon" href="uw.png" type="image/x-icon">"

sed -i "${line_number}i${line_to_insert}" "$file_path"

# 要追加的两行代码
line1='<script async src="//busuanzi.ibruce.info/busuanzi/2.3/busuanzi.pure.mini.js"></script>'
line2='<span id="busuanzi_container_site_pv"><span id="busuanzi_value_site_pv"></span>pageviews</span>'

# 将两行代码追加到文件末尾
echo -e "$line1\n$line2" >> "$file_path"


git add .
git commit -am "update"
git push