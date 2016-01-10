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
" 状态栏插件
Bundle 'https://github.com/bling/vim-airline.git'
" 文件目录插件
Bundle 'https://github.com/Xuyuanp/nerdtree-git-plugin.git'
" 侧边栏显示 git 文件修改
Bundle 'https://github.com/airblade/vim-gitgutter.git'
" CoffeScript 插件
Bundle 'https://github.com/kchmck/vim-coffee-script.git'
" 代码补全插件
Bundle 'https://github.com/Valloric/YouCompleteMe.git'
" Bundle 'https://github.com/marijnh/tern_for_vim.git'

" 代码对齐
Bundle 'https://github.com/godlygeek/tabular.git'
" 代码缩进线
Bundle 'https://github.com/Yggdroot/indentLine.git'
" 代码补全插件, 可以配合 YouCompleteMe 使用
Bundle 'https://github.com/SirVer/ultisnips.git'
" 代码补全集合
" Bundle 'https://github.com/honza/vim-snippets.git'  

" Bundle 'jnurmine/Zenburn'
" Bundle 'git@github.com:ctrlpvim/ctrlp.vim.git'

" 多光标操作的插件
" Bundle 'git@github.com:terryma/vim-multiple-cursors.git'
" Bundle 'git@github.com:humiaozuzu/TabBar.git'

" 该插件是为了 airline 中正确显示 git branch
Bundle 'https://github.com/tpope/vim-fugitive.git'

" 添加注释的插件
Bundle 'https://github.com/scrooloose/nerdcommenter.git'

" 给word添加引号等
"Bundle 'https://github.com/tpope/vim-surround.git'

" 自动补全引号等
Bundle 'https://github.com/Raimondi/delimitMate.git'

"jade 插件
Bundle 'https://github.com/digitaltoad/vim-jade.git'

" TODO list 插件
Bundle 'https://github.com/vim-scripts/TaskList.vim.git'



call vundle#end()            " required

filetype plugin indent on    " required
