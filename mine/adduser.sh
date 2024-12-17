#!/bin/bash

generate_v1(){
     usernum=$1
     arr=("apple" "banana" "cherry" "date" "elderberry" "jennifer" "grape" "honeydew" "kiwi" "lemon" 
          "mango" "nectarine" "orange" "papaya" "quince" "raspberry" "strawberry" "tomato" "elizabeth" "vampire" 
          "watermelon" "xigua" "yellowfruit" "zucchini" "avocado" "blueberry" "cantaloupe" "dragonfruit" 
          "eagleberry" "figberry" "grapefruit" "honeyberry" "icefruit" "jackfruit" "kumquat" "william" 
          "melon" "nectar" "olive" "peach" "michael" "linda" "pumpkin" "quinoa" "redberry" "strawberry" 
          "tangerine" "uglyberry" "viperberry" "wildberry" "xanadu" "yellowpear" "zingberry" "amber" 
          "brassberry" "cobberry" "dribbleberry" "emerald" "forestberry" "greenberry" "hobbyberry" 
          "irisberry" "junberry" "kellyberry" "lemongrass" "mandarin" "orchardberry" "pineapple" "quantumfruit" 
          "roseberry" "sunberry" "topazberry" "umbrafruit" "violetberry" "whiteberry" "xanthicberry" 
          "yellowberry" "zabberry" "alpha" "margaret" "gamma" "delta" "epsilon" "richard" "barbara" 
          "theta" "amanda" "angela" "lambda" "patricia" "brian" "joseph" "omicron" "sandra" "margaret" "sigma" 
          "helen" "upsilon" "cynthia" "george" "katherine" "omega")

     for i in {1..$usernum};do
          random_element="${arr[$RANDOM % ${#arr[@]}]}"
          random_number=$(printf "%03d" $((RANDOM % 1000)))
          result="${random_element}_${random_number}"
          echo $result
          curl -X POST -d "email=$result@dogerolls.com" -d "password=12u30daslk1" --user superdoge@dogerolls.com:BRAVEHEART0614 https://mail.dogerolls.com/admin/mail/users/add
     done
}

generate_random_string() {
    local length=$((RANDOM % 4 + 5))  # 字符串长度：随机生成 5 到 8
    tr -dc 'a-z' </dev/urandom | head -c "$length"  # 从 /dev/urandom 中生成随机小写字母
}




datetime=`date +"%Y%m%d_%H%M%S"`
filename=${datetime}_${1}.txt

generate_v2(){
    for i in $(seq 1 "$1"); do
          random_element=("$(generate_random_string)")
          random_number=$(printf "%03d" $((RANDOM % 1000)))
          result="${random_element}_${random_number}"
          curl -X POST -d "email=$result@dogerolls.com" -d "password=12u30daslk1" --user superdoge@dogerolls.com:BRAVEHEART0614 https://mail.dogerolls.com/admin/mail/users/add
	  echo "$result@dogerolls.com" >> $filename
     done
}

generate_v2 $1
