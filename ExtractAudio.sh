cd "$(dirname "$0")"


input=
filter=
count=0
for i in "$@"; do
    input="$input -i $i"
    filter="$filter[$count:a]"
    count=$((count + 1))
done

filter="$filter concat=n=$count:v=0:a=1 [a]"

ffmpeg \
    $input -filter_complex "$filter" \
    -map "[a]" \
    -f mp3 \
    -preset veryfast \
    -y audio.mp3

echo 按任意键继续
read -n 1
echo 继续运行






