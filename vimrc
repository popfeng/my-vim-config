" 个人配置信息

" 基本配置
"set ic " 查找时忽略大小写
set nonu " 显示行号
set ruler " 在右下角显示光标的坐标
set hlsearch " 高亮显示搜索结果
set incsearch " 边输边搜，即时更新搜索结果
set showcmd " 在ruler左边显示当前正在输入的命令
set expandtab " 将tab键改为空格
set tabstop=4 " 将tab键改为n个空格
set cindent " 使用C语言的规则自动缩进
set shiftwidth=4 " 自动缩进时，使用4个空格，默认是8个
set backspace=indent,eol,start " 激活退格删除
set nocompatible " 取消vi兼容
set noshowmode " 不显示左下角的状态行
"set laststatus=2 " 在所有 window 中都顯示狀態列
"set tw=80 fo+=Mm " 80字自动换行，或全选后按gq
set noswapfile " 不要生成swap文件，当buffer被丢弃的时候隐藏它
set noeb vb t_vb= " 不让vim发出滴滴声
set mouse=a " 使用鼠标
set t_Co=256 " 开启256色支持
:colo peachpuff " vim配色方案
syntax enable " 打开语法高亮
" 文件编码
set enc=utf8
set fencs=utf8
set fileencodings=utf-8
" 打开对文件类型插件的支持
filetype off
filetype indent on
filetype plugin on
filetype plugin indent on

" 上一个/下一个标签页切换的快捷键
nmap <F11> <ESC>:tabprevious<RETURN>
nmap <F12> <ESC>:tabnext<RETURN>

" PATHOGEN插件管理插件加载选项
"call pathogen#runtime_append_all_bundles()
execute pathogen#infect()

" Vundle 插件
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim' " let Vundle manage Vundle, required

" javascript
Plugin 'marijnh/tern_for_vim', {'do': 'npm install'}
Plugin 'Valloric/YouCompleteMe'

call vundle#end()

" NERDTREE
let NERDTreeWinSize=24
let NERDTreeShowBookmarks=0
let NERDTreeChDirMode=2
nmap <F2> <ESC>:NERDTreeToggle<RETURN>

" taglist
nmap <F1> <ESC>:TlistToggle<RETURN>
set tags=tags
set autochdir
let Tlist_Use_Right_Window = 1
let Tlist_Exit_OnlyWindow = 1

" powerline
set rtp+=~/Library/Python/3.7/lib/python/site-packages/powerline/bindings/vim
python3 from powerline.vim import setup as powerline_setup
python3 powerline_setup()
python3 del powerline_setup

" php定制内容
"autocmd FileType php noremap <C-L> :!php -l %<CR>

" phpdoc注释插件
"nnoremap <C-K> :call PhpDocSingle()<CR>
"vnoremap <C-K> :call PhpDocRange()<CR>
"let g:pdv_cfg_Author = 'popfeng <popfeng@yeah.net> ' . strftime("%F")

" YouCompleteMe
" 自动开启语义补全
let g:ycm_seed_identifiers_with_syntax = 1
" 在注释中也开启补全
let g:ycm_complete_in_comments = 1
let g:ycm_collect_identifiers_from_comments_and_strings = 0
" 开启基于tag的补全，可以在这之后添加需要的标签路径
let g:ycm_collect_identifiers_from_tags_files = 1
" 开始补全的字符数
let g:ycm_min_num_of_chars_for_completion = 2
" 补全后自动关闭预览窗口
let g:ycm_autoclose_preview_window_after_completion = 1
" 禁止缓存匹配项,每次都重新生成匹配项
let g:ycm_cache_omnifunc=0
" 离开插入模式后自动关闭预览窗口
autocmd InsertLeave * if pumvisible() == 0|pclose|endif


" CtrlP
let g:ctrlp_working_path_mode = 0
let g:ctrlp_match_window_bottom = 1
let g:ctrlp_max_height = 15
let g:ctrlp_line_prefix = '♪ '
