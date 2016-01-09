" 字体 && 字号
set guifont=Menlo:h13

" history存储容量
set history=2000

" insert 模式下 backspace 可以删除
set backspace=2

" 设置 vim 加载到文件底部时，多显示 5 行
set scrolloff=5

" 文件修改之后自动载入
set autoread

" 关闭交换文件
set noswapfile

" 关闭 search highlight
set nohlsearch


" 编码设置
set enc=utf-8
set fencs=utf-8,ucs-bom,shift-jis,gb18030,gbk,gb2312,cp936

" Add a bit extra margin to the left
set foldcolumn=1

set lbr
set textwidth=80


" 语言设置
set langmenu=zh_CN.UTF-8
language message zh_CN.UTF-8
set helplang=cn
source $VIMRUNTIME/delmenu.vim
source $VIMRUNTIME/menu.vim

" 禁止生成备份文件
set nobackup

" 搜索忽略大小写
set ignorecase

" 高亮search命中的文本。
" set hlsearch

" 搜索逐字符高亮
set incsearch

" 行内替换
set gdefault

" 始终显示行号
set nu

" 显示光标的坐标
" set ruler

" 高亮光标所在行
set cursorline

" 设置Tab键的宽度
set shiftwidth=2

" 文件中显示 tab whitespace
set listchars=tab:>…,trail:-

" 将Tab键更改为两个空格
set tabstop=2

set expandtab

" 与系统共享剪贴板(亲测MacOS)
set clipboard+=unnamed

" 设置配色方案
" colorscheme molokai
" colorscheme solarized
colorscheme Tomorrow-Night-Eighties

let g:molokai_original = 1
let g:rehash256 = 1


" 禁用自动缩进
set noautoindent


" 去掉输入错误的提示声音
set novisualbell         " don't beep
set noerrorbells         " don't beep
set visualbell t_vb=

" vimrc文件修改之后自动加载。 linux。
autocmd! bufwritepost .vimrc source %
autocmd! bufwritepost .vimrc source ~/.vim/*.vim

" 禁止显示滚动条
set guioptions-=l
set guioptions-=L
set guioptions-=r
set guioptions-=R

" 允许折行
set wrap

" 开启语法高亮功能
syntax enable
" 允许用指定语法高亮配色方案替换默认方案
syntax on


noremap H ^
noremap L $

set foldenable " 开始折叠
set foldmethod=syntax " 设置语法折叠
set foldcolumn=0 " 设置折叠区域的宽度
setlocal foldlevel=1 " 设置折叠层数为
set foldlevelstart=99
" set foldclose=all " 设置为自动关闭折叠
" 用空格键来开关折叠
nnoremap <space> @=((foldclosed(line('.')) < 0) ? 'zc' : 'zo')<CR>


command! Bclose call <SID>BufcloseCloseIt()
function! <SID>BufcloseCloseIt()
  let l:currentBufNum = bufnr("%")
  let l:alternateBufNum = bufnr("#")

  if buflisted(l:alternateBufNum)
    buffer #
  else
    bnext
  endif

  if bufnr("%") == l:currentBufNum
    new
  endif

  if buflisted(l:currentBufNum)
    execute("bdelete! ".l:currentBufNum)
  endif
endfunction
