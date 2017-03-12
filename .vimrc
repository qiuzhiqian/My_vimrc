"=========================================
"设置各种编码，防止非英文字符乱码
"=========================================
set fileencodings=utf-8,ucs-bom,gb1803,gbk,gb2312,cp936
set termencoding=utf-8
set encoding=utf-8
"==========================================  
"General  
"==========================================  
  
" history存储长度。  
set history=1000         
  
"检测文件类型  
filetype on  
" 针对不同的文件类型采用不同的缩进格式    
filetype indent on                 
"允许插件    
filetype plugin on  
"启动自动补全  
"filetype plugin indent on  "Ctrl+n/p
  
" 非兼容vi模式。去掉讨厌的有关vi一致性模式，避免以前版本的一些bug和局限  
set nocompatible        
set autoread          " 文件修改之后自动载入。  
set shortmess=atI       " 启动的时候不显示那个援助索马里儿童的提示  
  
" 取消备份。  
" Turn backup off, since most stuff is in SVN, git et.c anyway...  
set nobackup  
set nowb  
set noswapfile  
  
"粘贴时保持格式  
set paste  
"- 则点击光标不会换,用于复制  
set mouse-=a           " 在所有的模式下面打开鼠标。  
set selection=exclusive    
set selectmode=mouse,key  
  
" No annoying sound on errors  
" 去掉输入错误的提示声音  
"set noerrorbells  
"set novisualbell  
"set t_vb=  
"set tm=500  
  
  
"==========================================  
" show and format  
"==========================================  
"显示行号：  
set number  
set nowrap                    " 取消换行。  
""为方便复制，用<F2>开启/关闭行号显示:  
"nnoremap <F2> :set nonumber!<CR>:set foldcolumn=0<CR>  
  
  
"括号配对情况  
set showmatch  
" How many tenths of a second to blink when matching brackets  
set mat=2  
  
"设置文内智能搜索提示  
" 高亮search命中的文本。  
set hlsearch            
" 搜索时忽略大小写  
set ignorecase  
" 随着键入即时搜索  
set incsearch  
" 有一个或以上大写字母时仍大小写敏感  
set smartcase  
  
" 代码折叠  
set foldenable  
" 折叠方法  
" manual    手工折叠  
" indent    使用缩进表示折叠  
" expr      使用表达式定义折叠  
" syntax    使用语法定义折叠  
" diff      对没有更改的文本进行折叠  
" marker    使用标记进行折叠, 默认标记是 {{{ 和 }}}  
set foldmethod=syntax  
" 在左侧显示折叠的层次  
"set foldcolumn=4  
  
set tabstop=4                " 设置Tab键的宽度        [等同的空格个数]  
set shiftwidth=4  
set expandtab                " 将Tab自动转化成空格    [需要输入真正的Tab键时，使用 Ctrl+V + Tab]  
" 按退格键时可以一次删掉 4 个空格  
set softtabstop=4  
  
set ai "Auto indent  
set si "Smart indent  
  
"==========================================  
" status  
"==========================================  
"显示当前的行号列号：  
set ruler  
""在状态栏显示正在输入的命令  
set showcmd  
  
" Set 7 lines to the cursor - when moving vertically using j/k 上下滚动,始终在中间  
set so=7  
  
"set cursorline              " 突出显示当前行  
  
" 命令行（在状态行下）的高度，默认为1，这里是2  
"set cmdheight=2  
"set rulerformat=%20(%2*%<%f%=\ %m%r\ %3l\ %c\ %p%%%)  
"set statusline=%F%m%r%h%w\[POS=%l,%v][%p%%]\%{strftime(\"%d/%m/%y\ -\ %H:%M\")}  
set statusline=%<%f\ %h%m%r%=%k[%{(&fenc==\"\")?&enc:&fenc}%{(&bomb?\",BOM\":\"\")}]\ %-14.(%l,%c%V%)\ %P  
" Always show the status line  
"set laststatus=2  
  
  
"==========================================  
"colors and fonts  
"==========================================  
"开启语法高亮  
syntax enable  
syntax on  

  
"==========================================  
"others  
"==========================================  
  
"autocmd! bufwritepost _vimrc source % " vimrc文件修改之后自动加载。 windows。  
autocmd! bufwritepost .vimrc source % " vimrc文件修改之后自动加载。 linux。  
  
"==========================================
"GTags setting
"==========================================
let Gtags_VerticalWindow=1    "open windows vitically
let Gtags_Auto_Map=1          "use a suggested key-mapping
let Gtags_Auto_Update=1       "keep tag files up-to-date automatically
let Gtags_No_Auto_Jump=1      "don't jump to the first tag at the time of search
let Gtags_Close_When_Single=1 "close quickfix windows in case of single tag

" To use the default key/mouse mapping:
let GtagsCscope_Auto_Map = 1
" To ignore letter case when searching:
"	let GtagsCscope_Ignore_Case = 1
" To use absolute path name:
"       let GtagsCscope_Absolute_Path = 1
" To deterring interruption:
let GtagsCscope_Keep_Alive = 1
" If you hope auto loading:
let GtagsCscope_Auto_Load = 1
" To use 'vim -t ', ':tag' and '<C-]>'
set cscopetag
"
let GtagsCscope_Quiet=1


"=========================================
"TagList setting
"=========================================
let Tlist_Show_One_File=1 
let Tlist_Exit_OnlyWindow=1
let Tlist_Use_Right_Window = 1         "在右侧窗口中显示taglist窗口 

"=========================================
"NERDTree Setting
"=========================================
let NERDTreeQuitOnOpen=1


nmap <F12> :TlistToggle<CR>
nmap <F11> :NERDTreeToggle<CR>
