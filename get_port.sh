str="rust"
base=$(( 0x$(printf "%s" "$str" | md5sum | cut -c1-8) ))
port=$(( base % 1000 + 9000 ))   # 9000~9999
echo "$port"
