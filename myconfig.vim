" NERDTree 的配置
" autocmd vimenter * NERDTree
" let mapleader='<Ctrl>'
" nmap <leader><Tab> :NERDTreeToggle<CR>
nmap <leader><Tab> :NERDTreeFocus<CR>
" map <C-q> :NERDTreeFocus<CR>
" 当所有文件都关闭的时候自动关闭 NERDTree
" autocmd vimenter * NERDTree
" autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
" nnoremap ; :
" nnoremap : ;

" noremap <C-h> ^
" noremap <C-l> $

map <leader><leader> <ESC>
vmap <leader><leader> <ESC>
imap <leader><leader> <ESC>

map <D-3> <ESC>
vmap <D-3> <ESC>
imap <D-3> <ESC>
map <D-2> <ESC>
vmap <D-2> <ESC>
imap <D-2> <ESC>

" imap <Ctrl><space> <ESC>
" vmap <Ctrl><space> <ESC>

let g:neocomplete#enable_at_startup = 1
" inoremap <expr><TAB>  pumvisible() ? "\<C-n>" : "\<TAB>"
" inoremap <expr><Space> pumvisible() ? "\<C-y>" : "\<Space>"
let g:NERDTreeShowLineNumbers=1
let g:NERDTreeWinSize=40


" 修复indentline 在 nerdtree 中不显示
" autocmd FileType help,nerdtree IndentLinesToggle
autocmd FileType nerdtree IndentLinesToggle

" airline 的一些配置(必须安装 airline 插件)
set ttimeoutlen=20
let g:airline_theme='tomorrow'
" let g:airline_powerline_fonts = 1

if !exists('g:airline_symbols')
  let g:airline_symbols = {}
endif

" let g:airline_left_sep = ''
" let g:airline_left_alt_sep = ''
" let g:airline_right_sep = ''
" let g:airline_right_alt_sep = ''
" let g:airline_symbols.branch = ''
" let g:airline_symbols.readonly = ''
" let g:airline_symbols.linenr = ''


let g:airline_left_sep = '▶'
let g:airline_left_alt_sep = '❯'
let g:airline_right_sep = '◀'
let g:airline_right_alt_sep = '❮'
let g:airline_symbols.linenr = '␤'
let g:airline_symbols.branch = '⎇ '
let g:airline_symbols.whitespace = 'Ξ'
let g:airline_symbols.crypt = '🔒'

" 设置 airline 的 statusline 一直显示
set laststatus=1
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#buffer_nr_show = 1
let g:airline#extensions#tabline#left_sep = '▶'
let g:airline#extensions#branch#enabled = 1
let g:airline#extensions#tabline#left_alt_sep = '|'
let g:airline#extensions#branch#enabled = 1
let g:airline#extensions#branch#empty_message = ''
" let g:airline#extensions#tabline#buffer_idx_mode = 1

" tabline中buffer显示编号
" let g:airline#extensions#tabline#tab_nr_type = 2 " splits and tab number
" bufferline 插件配置
let g:airline#extensions#bufferline#enabled = 1

" gitgutter 插件的配置
let g:gitgutter_sign_column_always = 1

nmap ]h <Plug>GitGutterNextHunk
nmap [h <Plug>GitGutterPrevHunk
nmap <F7> <Plug>GitGutterNextHunk
nmap <F8> <Plug>GitGutterPrevHunk

" 保证 gitgutter 实时更新，这个得根据你系统的系能，但是要求 vim 7.3.105
" 及以上版本
let g:gitgutter_realtime = 0
let g:gitgutter_eager = 0
" 打开 gitgutter 高亮
" let g:gitgutter_highlight_lines = 1
let g:gitgutter_signs = 1


" 设置 nerdtree-git-plugin 的一些字体图标
let g:NERDTreeIndicatorMapCustom = {
    \ "Modified"  : "~",
    \ "Staged"    : "✚",
    \ "Untracked" : "*",
    \ "Renamed"   : "➜",
    \ "Unmerged"  : "═",
    \ "Deleted"   : "-",
    \ "Dirty"     : "✗",
    \ "Clean"     : "✔︎",
    \ "Unknown"   : "?"
    \ }


" 映射切换buffer的键位
noremap <left> :bp<CR>
noremap <right> :bn<CR>
noremap B :ls<CR>
noremap M :noh<CR>


" 设置 airline， 即顶部tab的快捷键，可以快速查看buffer
nmap <leader>1 <Plug>AirlineSelectTab1
" nmap <leader>2 <Plug>AirlineSelectTab2
" nmap <leader>3 <Plug>AirlineSelectTab3
" nmap <leader>4 <Plug>AirlineSelectTab4
" nmap <leader>5 <Plug>AirlineSelectTab5
" nmap <leader>6 <Plug>AirlineSelectTab6
" nmap <leader>7 <Plug>AirlineSelectTab7
" nmap <leader>8 <Plug>AirlineSelectTab8
" nmap <leader>9 <Plug>AirlineSelectTab9

" nnoremap <TAB> :tabnext<CR>

" 设置 ultisnips
let g:UltiSnipsUsePythonVersion = 2
let g:UltiSnipsExpandTrigger = "<c-j>"
let g:UltiSnipsJumpForwardTrigger = "<c-j>"
let g:UltiSnipsJumpBackwardTrigger="<c-k>"
" let g:UltiSnipsSnippetDirectories=["myUsnippets", "bundle/ultisnips/UltiSnips"]

" 对齐插件 tabular 配置
let g:tabular_loaded = 1

" 代码缩进线 indentLine 的配置
let g:indentLine_color_gui = '#4A5456'
let g:indentLine_enabled = 1
" let g:indentLine_char = '︙'
let g:indentLine_char = '┆'
" let g:indentLine_fileTypeExluce=['help', 'nerdtree']
let g:indentLine_fileTypeExluce=['nerdtree']

"缩进插件 缩进符号后加一个空格
let g:NERDSpaceDelims=1

" 多光标插件的设置
" nnoremap <C-c> :call multiple_cursors#quit()<CR>

" yankring 快捷键配置
nnoremap <leader>z :YRShow<CR>
let g:yankring_history_dir = '~/yankring_history'


" 快捷键的一些设置
nnoremap <C-j> <C-W>j
nnoremap <C-k> <C-W>k
nnoremap <C-l> <C-W>l
nnoremap <C-h> <C-W>h

" \w 一键保存
func! SaveFile()
  exec "w"
endfunc
map  <leader>w :call SaveFile()<CR>
imap <leader>s <ESC>:call SaveFile()<CR>
vmap <leader>w <ESC>:call SaveFile()<CR>

" NERD_commenter 设置注释
map <F5> <leader>ci
map :ci<CR> <leader>ci



" fixwhite_space 快捷键
" map <leader><space> :FixWhitespace<cr>


" ctrlp 快捷键
" let g:ctrlp_map = '<c-p>'
" let g:ctrlp_cmd = 'CtrlP'
" let g:ctrlp_custom_ignore = '\v[\/]\.(git|hg|svn|node_modules)$'
