set fileencodings=ucs-bom,utf-8,cp936,gb18030,big5,euc-jp,euc-kr,latin1
"set fileencoding=utf-8
set encoding=utf-8
set gfn=Monaco:h10:cANSI
hi Comment ctermfg =red
hi Statement ctermfg =darkyellow
set background=dark
set mouse=a "set mouse enable in all mode
set gfw=NSimsun:h12
set hlsearch            "高亮度反白
set backspace=2         "可随时用退格键删除
set autoindent          "自动缩排
set ruler               "可显示最后一行的状态
set showmode            "左下角那一行的状态
set nu                  "可以在每一行的最前面显示行号啦！
set expandtab
"tab为4个空格      
set tabstop=4	
set shiftwidth=4
set t_Co=256
set ru
set ignorecase
syntax on
"编程模式
"设置匹配模式，输入做括号会出现右括号      
set showmatch  

"修改文件自动备份      
if has("vms")  
set nobackup  
else  
set backup  
endif 

set colorcolumn=81            " alarm line on the potion of char 
set textwidth=80              " the line width = 80 on the ascii
set fo+=mB                    " the line width = 80 on the chinese
"record cursor position
augroup resCur
  autocmd!
  autocmd BufReadPost * call setpos(".", getpos("'\""))
augroup END

"vunder config  
set nocompatible              " 去除VI一致性,必须
filetype off                  " 必须
" 设置包括vundle和初始化相关的runtime path
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'git@github.com:Valloric/YouCompleteMe.git'
Plugin 'tomasr/molokai'
Plugin 'rdnetto/YCM-Generator'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
call vundle#end()            " 必须
filetype plugin indent on    " 必须 加载vim自带和插件相应的语法和文件类型相关脚本
"set leadermap
let mapleader=","
"colorscheme kolor
"设置颜色
filetype plugin on
colorscheme molokai
highlight NonText guibg=#060606
highlight Folded  guibg=#0A0A0A guifg=#9090D0

"vim-ariline config
set laststatus=2
"let g:airline_section_b = '%{getcwd()}'
let g:airline_section_c = '%t'
"let g:airline_section_b = '%{strftime("%c")}'
"let g:ariline_section_y = 'BN: %{bufnt("%)}'
let g:airline#extensions#tabline#enabled = 1

let g:airline#extensions#tabline#show_splits = 1
let g:airline#extensions#tabline#switch_buffers_and_tabs = 0
"enable/disable displaying tabs, regardless of number. (c)
let g:airline#extensions#tabline#show_tabs = 1
let g:airline#extensions#tabline#tab_nr_type = 2 " splits and tab number
let g:airline#extensions#tabline#show_tab_nr = 1 "tab number 
let g:airline#extensions#tabline#buffer_idx_mode = 1
nmap <leader>1 <Plug>AirlineSelectTab1
nmap <leader>2 <Plug>AirlineSelectTab2
nmap <leader>3 <Plug>AirlineSelectTab3
nmap <leader>4 <Plug>AirlineSelectTab4
nmap <leader>5 <Plug>AirlineSelectTab5
nmap <leader>6 <Plug>AirlineSelectTab6
nmap <leader>7 <Plug>AirlineSelectTab7
nmap <leader>8 <Plug>AirlineSelectTab8
nmap <leader>9 <Plug>AirlineSelectTab9
nmap <leader>f <Plug>AirlineSelectPrevTab
nmap <leader>b <Plug>AirlineSelectNextTab




let g:airline#extensions#tabline#left_sep = ' '
let g:airline#extensions#tabline#left_alt_sep = '|'
let g:airline_theme='wombat' 

"ycm config 
let g:ycm_key_invoke_completion = '<C-h>'
" 修改对C函数的补全快捷键，默认是CTRL + space，修改为ALT + ;
set completeopt=longest,menu	"让Vim的补全菜单行为与一般IDE一致(参考VimTip1228)
autocmd InsertLeave * if pumvisible() == 0|pclose|endif	"离开插入模式后自动关闭预览窗口
inoremap <expr> <CR>       pumvisible() ? "\<C-y>" : "\<CR>"	"回车即选中当前项
"上下左右键的行为 会显示其他信息
inoremap <expr> <Down>     pumvisible() ? "\<C-n>" : "\<Down>"
inoremap <expr> <Up>       pumvisible() ? "\<C-p>" : "\<Up>"
inoremap <expr> <PageDown> pumvisible() ? "\<PageDown>\<C-p>\<C-n>" : "\<PageDown>"
inoremap <expr> <PageUp>   pumvisible() ? "\<PageUp>\<C-p>\<C-n>" : "\<PageUp>"
" 跳转到定义处
let g:ycm_key_detailed_diagnostics = '<leader>d'
nnoremap <leader>jf :YcmCompleter GoToDeclaration<CR> 
nnoremap <leader>jd :YcmCompleter GoTo<CR>
nnoremap <F6> :YcmForceCompileAndDiagnostics<CR>	"force recomile with syntastic
nnoremap <leader>lo :lopen<CR>	"open locationlist
nnoremap <leader>lc :lclose<CR>	"close locationlist
inoremap <leader><leader> <C-x><C-o>

let g:ycm_global_ycm_extra_conf='/home/logan/.vim/.ycm_extra_conf.py'
" 不显示开启vim时检查ycm_extra_conf文件的信息
let g:ycm_confirm_extra_conf=0
" 开启基于tag的补全，可以在这之后添加需要的标签路径
let g:ycm_collect_identifiers_from_tags_files=1
"注释和字符串中的文字也会被收入补全
let g:ycm_collect_identifiers_from_comments_and_strings = 1
" 输入第2个字符开始补全
let g:ycm_min_num_of_chars_for_completion=2
" 禁止缓存匹配项,每次都重新生成匹配项
let g:ycm_cache_omnifunc=0
" 开启语义补全
let g:ycm_seed_identifiers_with_syntax=1
"在注释输入中也能补全
let g:ycm_complete_in_comments = 1
"在字符串输入中也能补全
let g:ycm_complete_in_strings = 1
" old version
      if !empty(glob("~/.vim/bundle/YouCompleteMe/cpp/ycm/.ycm_extra_conf.py"))
          let g:ycm_global_ycm_extra_conf = "~/.vim/bundle/YouCompleteMe/cpp/ycm/.ycm_extra_conf.py"
      endif
      " new version
      if !empty(glob("~/.vim/bundle/YouCompleteMe/third_party/ycmd/cpp/ycm/.ycm_extra_conf.py"))
          let g:ycm_global_ycm_extra_conf = "~/.vim/bundle/YouCompleteMe/third_party/ycmd/cpp/ycm/.ycm_extra_conf.py"
      endif
"runing c config mapping
nnoremap <F1>   <Esc>:w<CR>:!gcc  % -o /tmp/a.out && /tmp/a.out<CR>
nnoremap <F2>   <Esc>:w<CR>:!gcc  %<CR>
nnoremap <F3> <Esc>:w<CR>:!gcc  -g % -o /tmp/a.out && gdb /tmp/a.out<CR>
" run c++
nnoremap <F4>   <Esc>:w<CR>:!g++ -std=c++11 % -o /tmp/a.out && /tmp/a.out<CR>
nnoremap <C-F2>   <Esc>:w<CR>:!g++ -std=c++11 %<CR>
nnoremap <C-F3> <Esc>:w<CR>:!g++ -std=c++11 -g % -o /tmp/a.out && gdb /tmp/a.out<CR>

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" cscope setting
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
if has("cscope")
  set csprg=/usr/bin/cscope
  set csto=1
  set cst
  set nocsverb
  " add any database in current directory
  if filereadable("cscope.out")
      cs add cscope.out
  endif
  set csverb
endif
nmap <C-\>s :scs find s <C-R>=expand("<cword>")<CR><CR>	
nmap <C-\>g :scs find g <C-R>=expand("<cword>")<CR><CR>	
nmap <C-\>c :scs find c <C-R>=expand("<cword>")<CR><CR>	
nmap <C-\>t :scs find t <C-R>=expand("<cword>")<CR><CR>	
nmap <C-\>e :scs find e <C-R>=expand("<cword>")<CR><CR>	
nmap <C-\>f :scs find f <C-R>=expand("<cfile>")<CR><CR>	
nmap<C-\>i :scs find i ^<C-R>=expand("<cfile>")<CR>$<CR>	
nmap <C-\>d :scs find d <C-R>=expand("<cword>")<CR><CR>	
""""""""""""""""""""""""""""""
" nerdtrr plugin
""""""""""""""""""""""""""""""
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 1 && isdirectory(argv()[0]) && !exists("s:std_in") | exe 'NERDTree' argv()[0] | wincmd p | ene | endif
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
map <C-n> :NERDTreeToggle<CR>
let NERDTreeWinPos=1
