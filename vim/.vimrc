" Author: Yam
" Version: 0.1
" Email: haoshaochun@gmail.com
" Blog: https://yam.gift
" LastModify: 20210516



let mapleader = ","
let g:mapleader = ','



"===========================
" Basic
"===========================
filetype on
filetype plugin on

if !exists("g:syntax_on")
    syntax enable
endif

set noeb  " close beep
" set vb t_vb=  " close beep or flash, :help vb
set history=500



"===========================
" Plug
"===========================
" Install bundles
if filereadable(expand("~/.vimrc.bundle"))
    source ~/.vimrc.bundle
endif


" Autoformat
noremap <Leader>f :Autoformat<CR>

" NERDtree
noremap <Leader>t :NERDTreeToggle<CR>

" EasyMotion
nmap m <Plug>(easymotion-overwin-f)
nmap m <Plug>(easymotion-overwin-f2)
map <leader>w <Plug>(easymotion-bd-w)
nmap <leader>w <Plug>(easymotion-overwin-w)
map <Leader>j <Plug>(easymotion-j)
map <Leader>k <Plug>(easymotion-k)

" LeaderF
let g:Lf_ShortcutF = "<Leader>l"
" nnoremap <leader>l :LeaderfFile .<cr>
noremap <Leader>lf :LeaderfFunction!<CR>
noremap <Leader>lb :<C-U><C-R>=printf("Leaderf buffer %s", "")<CR><CR>
noremap <Leader>lm :<C-U><C-R>=printf("Leaderf mru %s", "")<CR><CR>
noremap <Leader>lt :<C-U><C-R>=printf("Leaderf bufTag %s", "")<CR><CR>
noremap <Leader>ll :<C-U><C-R>=printf("Leaderf line %s", "")<CR><CR>
noremap <Leader>rb :<C-U><C-R>=printf("Leaderf! rg --current-buffer -e %s ", expand("<cword>"))<CR>
noremap <Leader>rf :<C-U><C-R>=printf("Leaderf! rg -e %s ", expand("<cword>"))<CR>

" gv
nnoremap <leader>g :GV<cr>
nnoremap <leader>G :GV!<cr>
nnoremap <leader>gg :GV?<cr>

" Snips
let g:UltiSnipsExpandTrigger="<Leader><tab>"
let g:UltiSnipsListSnippets="<c-l>" " list all snippets for current filetype
let g:UltiSnipsJumpForwardTrigger="<tab>"
let g:UltiSnipsJumpBackwardTrigger="<s-tab>"

" color
colorscheme nord "zenburn solarized molokai 



"===========================
" CmdMap
"===========================
" let s:enabled = 1
nnoremap <leader>sn :call SetLineNumber()<cr>
function! SetLineNumber()
    if &nu " s:enabled
        set nonu
        set nornu
        " let s:enabled = 0
    else
        set nu
        set rnu
        " let s:enabled = 1
    endif
endfunction

nnoremap ; :
nnoremap <Leader><Leader>s :source $MYVIMRC<cr>
nnoremap <Leader><Leader>i :PlugInstall<cr>
nnoremap <Leader><Leader>u :PlugUpdate<cr>
vmap <Leader><Leader>y "+y
nnoremap <Leader><Leader>p "+p

nnoremap <c-j> <c-w>j
nnoremap <c-k> <c-w>k
nnoremap <c-h> <c-w>h
nnoremap <c-l> <c-w>l

noremap <Leader>sh :!./
noremap <Leader>cp :!g++ --std=c++17 -O2 -Wall 
noremap <Leader>py :!python 



"===========================
" Edit
"===========================
set shiftwidth=4 " https://tedlogan.com/techblog3.html
set tabstop=4
set smarttab
set expandtab  " space instead of tab
set ai  " auto indent
set si  " smart indent
filetype indent on
set backspace=2 " indent,eol,start
ab #e ====================
ab #s --------------------
ab #a ********************



"===========================
" Search
"===========================
" set ic  " ignorecase or noic means no ignorecase
set incsearch  " http://www.oualline.com/vim/10/top_10.html
set hlsearch



"===========================
" Move
"===========================
" set whichwrap+=h,l  " https://stackoverflow.com/questions/2574027/automatically-go-to-next-line-in-vim
" set whichwrap+=<,>,[,]



"===========================
" Store
"===========================
set nobackup
set noswapfile
set autoread
set autowrite
set confirm



"===========================
" Display
"===========================
set t_Co=256  " https://stackoverflow.com/questions/15375992/vim-difference-between-t-co-256-and-term-xterm-256color-in-conjunction-with-tmu
set term=xterm-256color 
set number
set rnu  " ralative line number
" set nu rnu  " hybrid
set cursorline  " highlight current line
set ruler  " show the current column in the statusbar
set termencoding=utf-8
set encoding=UTF-8
set fileencodings=utf8,ucs-bom,gbk,cp936,gb2312,gb18030



" https://vim.fandom.com/wiki/Folding
" https://www.jianshu.com/p/16e0b822b682
augroup vimrc
    au BufReadPre * setlocal foldmethod=indent
    au BufWinEnter * if &fdm == 'indent' | setlocal foldmethod=manual | endif
augroup END



"===========================
" Reference
"===========================
" https://stackoverflow.com/questions/3776117/what-is-the-difference-between-the-remap-noremap-nnoremap-and-vnoremap-mapping
