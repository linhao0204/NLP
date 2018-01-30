" *********************************************
" Vbundle插件管理                
" *********************************************
set nocompatible              " required
filetype off                  " required 
   
" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()        
 
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')
 
" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim' 
Plugin 'scrooloose/nerdtree'
Plugin 'majutsushi/tagbar'
Plugin 'Valloric/YouCompleteMe'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'kien/ctrlp.vim'
Plugin 'vim-scripts/indentpython.vim'


" Add all your plugins here (note older versions of Vundle used Bundle instead of Plugin)
" All of your Plugins must be added before the following line                 
call vundle#end()            " required
filetype plugin indent on    " required


" *********************************************
" NERD插件属性
" *********************************************
" au vimenter * NERDTree   " 开启vim的时候默认开启NERDTree
map <F2> :NERDTreeToggle<CR>  "  设置F2为开启NERDTree的快捷键
let NERDChristmasTree=1  " 让树更好看	


" *********************************************
" tagbar插件属性
" *********************************************
" 启动时自动focus
let g:tagbar_auto_faocus =1 
" 启动指定文件时自动开启tagbar
autocmd BufReadPost *.cpp,*.c,*.h,*.hpp,*.cc,*.cxx call tagbar#autoopen()


" *********************************************
" vim-airline
" *********************************************
" 开启powerline字体
let g:airline_powerline_fonts = 1
" 使用powerline包装过的字体
set guifont=Source\ Code\ Pro\ for\ Powerline:h14


" *********************************************
" Tomorrow主题配置                
" *********************************************
set t_Co=256
set background=dark	
colorscheme Tomorrow-Night


" *********************************************
" 分割布局相关
" *********************************************
set splitbelow
set splitright
"快捷键，ctrl+l切换到左边布局，ctrl+h切换到右边布局
"ctrl+k切换到上面布局，ctrl+j切换到下面布局
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>


" *********************************************
" YCM插件相关
" *********************************************
let g:ycm_autoclose_preview_window_after_completion=1
" 跳转到定义处
map <leader>g  :YcmCompleter GoToDefinitionElseDeclaration<CR>
" 默认tab、s-tab和自动补全冲突
let g:ycm_key_list_select_completion = ['<TAB>', '<c-n>', '<Down>'] 
let g:ycm_key_list_previous_completion = ['<S-TAB>', '<c-p>', '<Up>'] 
let g:ycm_auto_trigger = 1


" *********************************************
" ctrlp
" *********************************************
let g:ctrlp_map = '<c-p>' 
let g:ctrlp_cmd = 'CtrlP'
" 设置过滤不进行查找的后缀名 
let g:ctrlp_custom_ignore = '\v[\/]\.(git|hg|svn|pyc)$'


" *********************************************
" python代码风格PEP8
" *********************************************
au BufNewFile,BufRead *.py set tabstop=4 |set softtabstop=4|set shiftwidth=4|set textwidth=79|set expandtab|set autoindent|set fileformat=unix
au BufNewFile,BufRead *.js, *.html, *.css set tabstop=2|set softtabstop=2|set shiftwidth=2


" 开启代码折叠功能
" 根据当前代码行的缩进来进行代码折叠
set foldmethod=indent 
set foldlevel=99


" 将za快捷键映射到space空格键上
nnoremap <space> za


" 显示行号
set nu! 
" 语法高亮度显示
syntax on 
" 支持UTF-8编码
set encoding=utf-8
" delete键设置为增强模式
set backspace=2
