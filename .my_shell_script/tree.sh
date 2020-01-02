#!/bin/bash

list_recursive ()
{
  local filepath=$1

  echo "$filepath"

  ＃ディレクトリである場合
  if [ -d "$filepath" ]; then
    local fname
    for fname in $(ls $filepath")
    do
      # 再度list_recursive を呼び出す 
      echo "${filepath}/${fname}"
    done
  fi
}

list_recursive "$1"
