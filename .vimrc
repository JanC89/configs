set expandtab
set tabstop=4
set smartindent
set syntax=on
set shiftwidth=4
set tags=tags;/
set number
set showcmd
set visualbell
set laststatus=2
set hidden
set pastetoggle=<F3>

let mapleader = ","
let g:neomake_php_phpcs_args_standard = 'PSR2'
let g:neomake_python_python_exe = 'python3'
filetype plugin on
autocmd! BufEnter,BufWritePost * Neomake

" Mappings
nnoremap <Leader>b :Gblame -w<CR>
nnoremap <Leader>f :Files<CR>
nnoremap <Leader>t :NERDTreeToggle<CR>
nnoremap <Leader>w :!php -l %<CR>
nnoremap <Leader>v :vsplit<CR>
nnoremap <Leader>< :bn<CR>
nnoremap <Leader>z :bp<CR>
nnoremap <Leader>q :bd<CR>
nnoremap <leader>g <C-]>
nnoremap <leader>s :Ggr<space>
nnoremap <leader>d :Ggr <cword><CR>

" Plugins
call plug#begin('~/.vim/plugged')
Plug 'tpope/vim-fugitive'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
Plug 'StanAngeloff/php.vim'
Plug 'phpactor/phpactor', {'for': 'php', 'do': 'composer install'}
Plug 'itchyny/lightline.vim'
Plug 'scrooloose/nerdtree'
Plug 'Valloric/YouCompleteMe'
Plug 'neomake/neomake'
call plug#end()

command -nargs=+ Ggr execute 'silent Ggrep!' <q-args> | cw | redraw!
