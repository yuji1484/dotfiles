#!/bin/bash

# while 条件式
# do
#	処理 
# done

count=1
while [ $count -le 10 ]
do
	echo "この処理は$count回実行されました"
	count=`expr $count + 1`
done

# until 条件式
# do
# 	処理
# done


