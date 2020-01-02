#!/bin/bash

usage()
{
  # シェルスクリプトのファイル名を取得
  local script_name=$(basename "$0")

  # ヒアドキュメントでヘルプを表示
  cat << END
Usage: $script_name PATTERN [PATH] [NAME_PATTERN]
Find file in current directory recursively, and print lines which match PATTERN.

  PATH         find file in PATH directory, instead of current directory
  NAME_PATTERN specify name pattern to find file

Examples:
  $script_name return
  $script_name return ~ '*.txt'
END
}

# コマンドライン引数が0個のとき（何も指定されない時）
if [ "$#" -eq 0 ]; then
  usage
  exit 1 #終了ステータス1で終了  
fi

pattern=$1
directory=$2
name=$3

# 第二引数（起点ディレクトリが空文字列ならば、デフォルト値として.（カレントディレクトリ）を指定
# grep のオプションである n は行番号の表示、 H はファイルが一つでもファイル名を表示。
if [ -z "$directory" ]; then
  directory='.'
fi

# 第三引数が（検索ファイルバターン）がから文字列ならば、デフォルト値として'*'を設定
if [ -z "$name" ]; then
  name='*'
fi

# 検索ディレクトリが存在しない場合はエラーメッセージを表示して終了
if [ ! -d "$directory" ]; then
  echo "$0: ${directory}; No such directory" 1>&2
  exit 2
fi


find "$directory" -type f -name "$name"| xargs grep -nH "$pattern"
