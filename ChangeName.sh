#!/bin/bash
cd "$(dirname "$0")"
count=1

for file in *.mp4; do
    mv "$file" "$(dirname "$file")/$count.mp4"
    count=$((count + 1))
done

echo 按任意键继续
read -n 1
echo 继续运行


