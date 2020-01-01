if g:dein#_cache_version !=# 150 || g:dein#_init_runtimepath !=# '/Users/yuji/.vim/bundles/repos/github.com/Shougo/dein.vim/,/Users/yuji/.vim,/usr/share/vim/vimfiles,/usr/share/vim/vim81,/usr/share/vim/vimfiles/after,/Users/yuji/.vim/after' | throw 'Cache loading error' | endif
let [plugins, ftplugin] = dein#load_cache_raw(['/Users/yuji/.vimrc', '/Users/yuji/.dein/dein.toml', '/Users/yuji/.dein/dein-lazy.toml'])
if empty(plugins) | throw 'Cache loading error' | endif
let g:dein#_plugins = plugins
let g:dein#_ftplugin = ftplugin
let g:dein#_base_path = '/Users/yuji/.vim/bundles'
let g:dein#_runtime_path = '/Users/yuji/.vim/bundles/.cache/.vimrc/.dein'
let g:dein#_cache_path = '/Users/yuji/.vim/bundles/.cache/.vimrc'
let &runtimepath = '/Users/yuji/.vim/bundles/repos/github.com/Shougo/dein.vim/,/Users/yuji/.vim,/usr/share/vim/vimfiles,/Users/yuji/.vim/bundles/repos/github.com/junegunn/fzf,/Users/yuji/.vim/bundles/repos/github.com/neoclide/coc.nvim_release,/Users/yuji/.vim/bundles/.cache/.vimrc/.dein,/usr/share/vim/vim81,/Users/yuji/.vim/bundles/.cache/.vimrc/.dein/after,/usr/share/vim/vimfiles/after,/Users/yuji/.vim/after'
filetype off
    inoremap <silent><expr> <TAB> pumvisible() ? "\<C-n>" : <SID>check_back_space() ? "\<TAB>" : coc#refresh()
    inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"
    inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"
    function! s:check_back_space() abort
      let col = col('.') - 1
      return !col || getline('.')[col - 1]  =~# '\s'
    endfunction
    nmap <silent> gd <Plug>(coc-definition)
    nmap <silent> gy <Plug>(coc-type-definition)
    nmap <silent> gi <Plug>(coc-implementation)
    nmap <silent> gr <Plug>(coc-references)
    command! -bang -nargs=* Rg call fzf#vim#grep( 'rg --column --line-number --hidden --ignore-case --no-heading --color=always '.shellescape(<q-args>), 1, <bang>0 ? fzf#vim#with_preview({'options': '--delimiter : --nth 4..'}, 'up:60%') : fzf#vim#with_preview({'options': '--delimiter : --nth 4..'}, 'right:50%:hidden', '?'), <bang>0)
        nnoremap <C-g> :Rg<Space>
        nnoremap <C-p> :GFiles<CR>
        nnoremap <C-h> :History<CR>
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
