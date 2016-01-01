set nocompatible              " be iMproved, required
filetype off                  " required

" 此处规定Vundle的路径 set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'




" 配置插件
Bundle 'https://github.com/scrooloose/nerdtree.git'
Bundle 'https://github.com/bling/vim-airline.git'
" 当文件目录有修改时，目录提示
Bundle 'https://github.com/Xuyuanp/nerdtree-git-plugin.git'
Bundle 'https://github.com/airblade/vim-gitgutter.git'
Bundle 'https://github.com/kchmck/vim-coffee-script.git'
Bundle 'https://github.com/Valloric/YouCompleteMe.git'
Bundle 'https://github.com/marijnh/tern_for_vim.git'
" 代码对齐
Bundle 'https://github.com/godlygeek/tabular.git'
" 代码缩进线
Bundle 'https://github.com/Yggdroot/indentLine.git'
Bundle 'https://github.com/SirVer/ultisnips.git'

" Bundle 'jnurmine/Zenburn'
Bundle 'altercation/vim-colors-solarized'
" Bundle 'git@github.com:ctrlpvim/ctrlp.vim.git'
Bundle 'git@github.com:terryma/vim-multiple-cursors.git'
" Bundle 'git@github.com:humiaozuzu/TabBar.git'

" 该插件是为了 airline 中正确显示 git branch
Bundle 'https://github.com/tpope/vim-fugitive.git'




call vundle#end()            " required

filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line