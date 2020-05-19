#!/bin/bash

# コマンド
ls
# コメントアウト
#date

# 変数
abc=123
echo $abc

# 一次元配列
abc[0]=1234
abc[1]=5678
echo ${abc[0]}
index=1
echo ${abc[index]}

# シェル変数と環境変数
export abc
export xyz=234

# read コマンド
read abc
echo $abc

# set コマンド
## $abcの内容を表示
set | grep abc
## $abcを削除
unset abc
set | grep abc

# envコマンド
## 環境変数ABCを表示
export ABC=999999
env | grep ABC
## 環境変数ABCを削除
unset ABC
env | grep ABC

# 引用符
## シングルクオートとダブルクォート
ABC=123
echo "value of ABC is $ABC"
echo 'value of ABC is $ABC'
## バッククオート
XYZ=`date`
echo "it is $XYZ now."
echo "it is `date` now"
## エスケープシークエンス
ABC=123
echo "value of ABC is "$ABC"."
echo "value of ABC is \"$ABC\"."
echo "value of ABC is \$ABC."
echo "I am a cat \
As yet I have no name"
echo -e "I am a cat \nAs yet I have no name\041"

# 条件分岐
## 文字列比較
### a == b : aとbが等しければ真
### a != b : aとbが等しくなければ真
### str -n : 空文字列ではない
### str -z : 空文字列である
## 数値比較
### a -eq b : aとbが等しい(equal to)真
### a -ne b : aとbが等しくなければ(not equtal to)真
### a -ge b : aがb以上であれば(greater than or equal to)であれば真
### a -le b : aがb以下であれば(less than or equal to)であれば真
### a -gt b : aがbより大きい(greater than)値であれば真
### a -lt b : aがb未満(less than)であれば真
## ファイル属性 testコマンド(man test)
###  -f ファイル名　: 通常ファイルなら真
###  -d ファイル名　: ディレクトリなら真
###  -e ファイル名　: ファイルが存在すれば真
###  -L ファイル名　: シンボリックリンクなら真
###  -r ファイル名　: 読み取り可能ファイルなら真
###  -w ファイル名　: 書き込み可能ファイルなら真
###  -x ファイル名　: ファイルが存在して、実行権限があれば真
###  -s ファイル名　: サイズが0より大きければ真
## 論理積
### [ 条件A -a 条件B -a 条件C ]
### [ 条件A ] && [ 条件B ] && [ 条件C ]
## 論理和
### [ 条件A -o 条件B -o 条件C ]
### [ 条件A ] || [ 条件B ] || [ 条件C ]
