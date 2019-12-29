if g:dein#_cache_version !=# 150 || g:dein#_init_runtimepath !=# '/Users/yuji/.vim/bundles/repos/github.com/Shougo/dein.vim/,/Users/yuji/.vim,/usr/share/vim/vimfiles,/usr/share/vim/vim80,/usr/share/vim/vimfiles/after,/Users/yuji/.vim/after' | throw 'Cache loading error' | endif
let [plugins, ftplugin] = dein#load_cache_raw(['/Users/yuji/.vimrc', '/Users/yuji/.dein/dein.toml', '/Users/yuji/.dein/dein-lazy.toml'])
if empty(plugins) | throw 'Cache loading error' | endif
let g:dein#_plugins = plugins
let g:dein#_ftplugin = ftplugin
let g:dein#_base_path = '/Users/yuji/.vim/bundles'
let g:dein#_runtime_path = '/Users/yuji/.vim/bundles/.cache/.vimrc/.dein'
let g:dein#_cache_path = '/Users/yuji/.vim/bundles/.cache/.vimrc'
let &runtimepath = '/Users/yuji/.vim/bundles/repos/github.com/Shougo/dein.vim/,/Users/yuji/.vim,/usr/share/vim/vimfiles,/Users/yuji/.vim/bundles/.cache/.vimrc/.dein,/usr/share/vim/vim80,/Users/yuji/.vim/bundles/.cache/.vimrc/.dein/after,/usr/share/vim/vimfiles/after,/Users/yuji/.vim/after'
filetype off
  let NERDTreeShowHidden=1
    nnoremap <silent><C-a> :NERDTreeFind<CR>:vertical res 30<CR>
    let g:airline_theme = 'onedark'
    let g:airline#extensions#tabline#enabled = 1
    let g:airline#extensions#tabline#buffer_idx_mode = 1
    let g:airline#extensions#tabline#fnamemod = ':t'
  let g:closetag_filenames='*.html'
  let g:closetag_xhtml_filenames='*.jsx,*.tsx,*.vue'
  let g:closetag_filetypes='html'
  let g:closetag_xhtml_filetypes='jsx,tsx,javascript.jsx,typescript.tsx,vue'
  let g:closetag_emptyTags_caseSensitive=1
  let g:closetag_shortcut='>'
    vnoremap ? :'<,'>TComment<CR>
    let g:rainbow_active = 1
