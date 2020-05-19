#!/bin/bash

# カレントディレクトリと、親ディレクトリ以外のドットファイルを正規表現的にリストアップしたい。
# これを設定すれば、新しい設定ファイルを追加した際に書き換え不要。
# .git と.DS_Storeは設定 ファイルではないので、省く。

for dotfiles in .??*
do
  [[ "$dotfiles" == ".git" ]] && continue
  [[ "$dotfiles" == ".DS_Store" ]] && continue

  echo "$dotfiles"
done
