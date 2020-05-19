#!/bin/bash

# case <文字列> in
#   <パターン1>)
#     処理1
#     ;;
#   <パターン2>)
#     処理2
#     ;; 
#   <パターン3>)
#     処理3
# esac


case $1 in
	a|A)
		echo "引数にaまたはAが入力されました";;
	b|B)
		echo "引数にbまたはBが入力されました";;
	*)
		echo "a,b以外が入力されました"
esac
