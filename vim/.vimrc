" Pathogen
execute pathogen#infect()

" Disable annoying beeping
set noerrorbells visualbell t_vb=
autocmd GUIEnter * set visualbell t_vb=

"" airline
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#fnamemod = ':t'
let g:airline_powerline_fonts = 1

" Speed up gitgutter
let g:gitgutter_realtime = 0
let g:gitgutter_eager = 0

"" required by nerdcommenter
filetype plugin on

" random stuff that I like
set softtabstop =4 shiftwidth=4 expandtab
set history=200
set number
set smarttab
set ai "Auto indent
set si "Smart indent
set visualbell
set autochdir
syntax on
imap jk <Esc>
set background=dark
colorscheme gruvbox

"" NerdTREE
"autocmd vimenter * NERDTree     " Automatically open NerdTree
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 1 && isdirectory(argv()[0]) && !exists("s:std_in") | exe 'NERDTree' argv()[0] | wincmd p | ene | endif
" close vim if nerdtree is only window left
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
" Ctrl-n to toggle nerdtree
nnoremap <leader>n :NERDTreeToggle<CR>

" toggle pastemode
set pastetoggle=<leader>p

" Split open current file
nnoremap <leader>v :vsplit<CR>

" Print ipdb debug line
noremap <leader>pdb oimport pdb; pdb.set_trace()<ESC>

"" nerd commenter
" Add spaces after comment delimiters by default
let g:NERDSpaceDelims = 1
" Use compact syntax for prettified multi-line comments
let g:NERDCompactSexyComs = 1
" Align line-wise comment delimiters flush left instead of following code
let g:NERDDefaultAlign = 'left'
" Set a language to use its alternate delimiters by default
let g:NERDAltDelims_java = 1

" for finding files 
nmap <leader>bf :CtrlP<cr>
nmap <leader>bb :CtrlPBuffer<cr>
nmap <leader>br :CtrlPMRU<cr>
" run search everything
nmap <leader>bm :CtrlPMixed<cr>

" Use the nearest .git directory as the cwd
" " This makes a lot of sense if you are working on a project that is in
" version control. It also supports works with .svn, .hg, .bzr.
let g:ctrlp_working_path_mode = 'r'

" not sure what this is for
let g:loaded_youcompleteme = 1

let g:ctrlp_custom_ignore = {
      \ 'dir':  '\v[\/](\.(git|hg|svn)|\_site)$',
        \ 'file': '\v\.(exe|so|dll|class|png|jpg|jpeg)$',
        \}

" hides buffers so they aren't annoying
set hidden

" Use the right side of the screen
let g:buffergator_viewport_split_policy = 'R'
" I want my own keymappings...
let g:buffergator_suppress_keymaps = 1

" Looper buffers
" Let g:buffergator_mru_cycle_loop = 1
" Go to the previous buffer open
nmap <leader>jj :BuffergatorMruCyclePrev<cr>
" Go to the next buffer open
nmap <leader>kk :BuffergatorMruCycleNext<cr>
" View the entire list of buffers open
nmap <leader>bl :BuffergatorOpen<cr>
" Shared bindings from Solution #1 from earlier
nmap <leader>t :enew<cr>
" Close the current buffer and move to the previous one
nmap <leader>bq :bp <BAR> bd #<cr>
