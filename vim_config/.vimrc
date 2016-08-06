set fileencodings=ucs-bom,utf-8,cp936,gb18030,big5,euc-jp,euc-kr,latin1
set fileencoding=utf-8
set encoding=utf-8
"set termencoding=gbk
set gfn=Monaco:h10:cANSI
hi Comment ctermfg =red
hi Statement ctermfg =darkyellow
set background=dark
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
"设置颜色
let g:kolor_italic=1
let g:kolor_bold=1                   
let g:kolor_underlined=0       
let g:kolor_alternative_matchparen=0 
colorscheme kolor
"按键映射
map <F4> :set nu!<BAR>set nonu!<BAR>

"编程模式
"设置匹配模式，输入做括号会出现右括号      
set showmatch  

"修改文件自动备份      
if has("vms")  
set nobackup  
else  
set backup  
endif 

"""""""""""""设置开启ctags"""""""""""""     
map <F4> :!ctags -R --c++-kinds=+p --fields=+iaS --extra=+q .<CR><CR>  

"第一个命令里的分号是必不可少的。这个命令让vim首先在当前目录里寻找tags文件，如果没有找到  
"tags文件，或者没有找到对应的目标，就到父目录 中查找，一直向上递归。因为tags文件中记录的>路径总是相对于tags文件所在的路径，所以要使用第二个设置项来改变vim的当前目录。   
set tags=tags;  
set autochdir  
"绝对路径  
"set tags=/home/long/workstation/ganguio/uio-8139d-driver/V7/tags,/home/long/linux-3.7.3/drivers/uio/tags  


"""""""""""""""""Taglist设置"""""""""""""""""           
map <F3> : Tlist<CR>  ""按下F3就可以呼出了  
"let Tlist_Auto_Open = 1  "在启动VIM后，自动打开taglist窗口  
let Tlist_Ctags_Cmd = '/usr/bin/ctags'  "设定ctags的位置  
let Tlist_Use_Right_Window=0 " 1为让窗口显示在右边，0为显示在左边  
let Tlist_Show_One_File=0 "让taglist可以同时展示多个文件的函数列表，设置为1时不同时显示>多个文件的tag，只显示当前文件的  
let Tlist_File_Fold_Auto_Close=1 "同时显示多个文件中的tag时，taglist只显示当前文件tag，>其他文件的函数列表折叠隐藏  
let Tlist_Exit_OnlyWindow=1 "当taglist是最后一个分割窗口时，自动退出vim  
"let Tlist_Use_SingleClick= 1    " 缺省情况下，在双击一个tag时，才会跳到该tag定义的位置  
"let Tlist_Process_File_Always=0  "是否一直处理tags.1:处理;0:不处理  



"""""""""""""""""""""""cscope设置""""""""""""""""""      
set cscopequickfix=s-,c-,d-,i-,t-,e-    
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

nmap <C-@>s :cs find s <C-R>=expand("<cword>")<CR><CR>  
nmap <C-@>g :cs find g <C-R>=expand("<cword>")<CR><CR>  
nmap <C-@>c :cs find c <C-R>=expand("<cword>")<CR><CR>  
nmap <C-@>t :cs find t <C-R>=expand("<cword>")<CR><CR>  
nmap <C-@>e :cs find e <C-R>=expand("<cword>")<CR><CR>  
nmap <C-@>f :cs find f <C-R>=expand("<cfile>")<CR><CR>  
nmap <C-@>i :cs find i ^<C-R>=expand("<cfile>")<CR>$<CR>  
nmap <C-@>d :cs find d <C-R>=expand("<cword>")<CR><CR> 
