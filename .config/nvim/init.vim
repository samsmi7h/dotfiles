" """" VIM PLUG: START
call plug#begin('~/.config/nvim/vim-plug-plugins')


"--------------------------------------------------
" """ fzf: for searching file names

" import the binary
Plug '/usr/local/opt/fzf'

" import the vim plugin
Plug 'junegunn/fzf'

" ensure latest
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }

" set ctrl-p to start fuzzy finder, including hidden files
" ignores the .git/ directory
nnoremap <C-p> :call fzf#run({'source': 'rg --files --hidden -g !.git/ -g !vendor/', 'sink': 'e'})<Cr>

" --------------------------------------------------
" RipGrep: for searching text
"
Plug 'jremmen/vim-ripgrep'

" highlight search matches
let g:rg_highlight = 1

" case insensitive
let g:rg_command = 'rg --vimgrep --line-number --no-heading -i -g !vendor/'

nnoremap <C-f> :Rg<SPACE>

" --------------------------------------------------

" """" FILE EXPLORER

" file explorer: no banner
let g:netrw_banner = 0

" file explorer: open new file vertically
let g:netrw_browse_split = 2

" file explorer: window size 25%
let g:netrw_winsize = 75

" file explorer: select display style -- toggles with i
let g:netrw_liststyle = 3

"---------------------------------------------------
""" Go Setting
Plug 'fatih/vim-go'
Plug 'neoclide/coc.nvim', {'do': 'yarn install --frozen-lockfile', 'branch': 'release'}
source ~/.config/nvim/settings/go.vim

"---------------------------------------------------
" """" Gruvbox Theme

" install themes
Plug 'morhetz/gruvbox'

Plug 'projekt0n/github-nvim-theme'

"---------------------------------------------------
" Vim Surround: To wrap text in parentheses, quotes
" or remove the same wrappings
"

Plug 'tpope/vim-surround'

"---------------------------------------------------
"airline gives the tab-like status bar
"when multi buffers open

Plug 'vim-airline/vim-airline'
let g:airline#extensions#tabline#enabled = 1

"---------------------------------------------------
" vim -> github
" :ToGithub
Plug 'tonchis/vim-to-github'

" --------------------------------------------------
" Markdown Preview
Plug 'iamcco/markdown-preview.nvim', { 'do': 'cd app && yarn install' }

" --------------------------------------------------

"  set line numbers to relative, with current
set number relativenumber


" -------------------------------------------------
"  auto-complete brackets, quotes etc
"  THIS IS ACTUALLY QUITE TERRIBLE
""inoremap " ""<left>
""inoremap ' ''<left>
""inoremap ( ()<left>
""inoremap [ []<left>
""inoremap { {}<left>
""inoremap {<CR> {<CR>}<ESC>O
""inoremap {;<CR> {<CR>};<ESC>O


" -------------------------------------------------
"  ctrl J to escape
vnoremap <C-j> <ESC>
inoremap <C-j> <ESC>

"
"--------------------------------------------------
" buffer changes

" gn for next buffer
map gn :bn<cr>

" gp for previous buffer
map gp :bp<cr>

" gw to close buffer
map gw :bd<cr>

" gk to close all buffers but current one
map gk :%bd\|e#\|bd#<cr>


"--------------------------------------------------
" case insensitive search
set ignorecase
"--------------------------------------------------
" Terraform Plugin

Plug 'hashivim/vim-terraform'

" -------------------------------------------------

" """" VIM PLUG: END
call plug#end()

"---------------------------------------------------
" set theme
" colorscheme github_*
" https://github.com/projekt0n/github-nvim-theme

colorscheme github_dark

 autocmd ColorScheme * highlight CocErrorFloat guifg=#ffffff
 autocmd ColorScheme * highlight CocInfoFloat guifg=#ffffff
 autocmd ColorScheme * highlight CocWarningFloat guifg=#ffffff
 autocmd ColorScheme * highlight SignColumn guibg=#adadad

" --------------
" Create a new file in the current directory
nnoremap <C-n> :e %:h/

"---------------------------------------------------
" Debugger settings
" -- show the variables and stack trace only
" -- hide the goroutines portal
let g:go_debug_windows = {
      \ 'vars':       'rightbelow 60vnew',
      \ 'stack':      'rightbelow 10new',
\ }

" Mappings: uses Control-b followed by a command key
map <C-b><C-b> :GoDebugBreakpoint<cr>
map <C-b><C-t> :GoDebugTestFunc<cr>
map <C-b><C-g> :GoDebugContinue<cr>
map <C-b><C-s> :GoDebugStop<cr>

"
" ----
"  Copying to Mac clipboard
"  - The key commands should map to their in-vim equivalent

" Copy text under highlight
vnoremap  <leader>y "*y

" Copy to end of line
nnoremap  <leader>Y "*yg_

" Copy whole line
nnoremap  <leader>yy "+yy

