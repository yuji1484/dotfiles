#!/bin/bash

# for 変数 in  値のリスト
# do
# 	処理
# done

for i in a b c d
do
	echo $i
done

for i in `ls`
do
	echo $i
done
