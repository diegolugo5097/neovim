syntax on
set mouse=a
set noerrorbells
set sw=2
set number
"set rnu
set smartindent
set numberwidth=1
set nowrap
set noswapfile
set nobackup
set nowritebackup
set incsearch
set ignorecase
set clipboard=unnamed,unnamedplus
set encoding=utf-8
set hidden
set cmdheight=2
set updatetime=300
set shortmess+=c
set cursorline
set nocompatible
set termguicolors
set completeopt=noselect,menuone
set list
set listchars=
set listchars+=tab:░\ 
set listchars+=trail:·
set listchars+=extends:»
set listchars+=precedes:«
set listchars+=nbsp:⣿
set statusline=%<%f\ %y%m%r%=%-12.(%l:%c%)\ %-3.($%B%)\ %-5L\ %P
"set listchars=tab:>\ ,trail:-,nbsp:+
set sessionoptions=blank,buffers,curdir,folds,help,tabpages,winsize
" set tabs to have 4 spaces
set ts=4
" indent when moving to the next line while writing code
set autoindent
" expand tabs into spaces
set expandtab
" when using the >> or << commands, shift lines by 4 spaces
set shiftwidth=4
" show a visual line under the cursor's current line
set cursorline
" show the matching part of the pair for [] {} and ()
set showmatch
" enable all Python syntax highlighting features
let python_highlight_all = 1

if has("nvim")
  " exit terminal mode
  tnoremap <Esc> <C-\><C-n>
  " change ShaDa path
  set shada+=n~/.cache/vim/shada
endif
" Highlight Trailing Whitespace
"
" Track which buffers have been created, and set the highlighting only once.
autocmd VimEnter * autocmd WinEnter * let w:created=1
autocmd VimEnter * let w:created=1
highlight WhitespaceEOL ctermbg=red ctermfg=white guibg=#592929
autocmd WinEnter *
  \ if !exists('w:created') | call matchadd('WhitespaceEOL', '\s\+$') | endif
call matchadd('WhitespaceEOL', '\s\+$')

call plug#begin('~/.local/share/nvim/plugged')

"Themes
Plug 'glepnir/oceanic-material'
Plug 'marko-cerovac/material.nvim'

"Visual
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'ryanoasis/vim-devicons'
Plug 'Yggdroot/indentLine'
Plug 'ap/vim-css-color'
Plug 'tiagofumo/vim-nerdtree-syntax-highlight'

"Functionality
Plug 'vim-python/python-syntax'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
Plug 'Vimjas/vim-python-pep8-indent'
Plug 'honza/vim-snippets'
Plug 'mxw/vim-jsx'
Plug 'yuezk/vim-js'
Plug 'pangloss/vim-javascript'
Plug 'maxmellon/vim-jsx-pretty'
Plug 'davidhalter/jedi-vim'
Plug 'pappasam/coc-jedi', { 'do': 'yarn install --frozen-lockfile && yarn build' }
Plug 'cakebaker/scss-syntax.vim'
Plug 'posva/vim-vue'
Plug 'othree/html5.vim'
Plug 'leafOfTree/vim-vue-plugin'
Plug 'itspriddle/vim-jquery'
Plug 'kyazdani42/nvim-web-devicons' " for file icons
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'

"Code Modification
Plug 'scrooloose/nerdcommenter'
Plug 'SirVer/ultisnips'
Plug 'jiangmiao/auto-pairs'
Plug 'mattn/emmet-vim'
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}  " We recommend updating the parsers on update
Plug 'cburroughs/pep8.py'
Plug 'Vimjas/vim-python-pep8-indent'
Plug 'python-mode/python-mode', { 'for': 'python', 'branch': 'develop' }
Plug 'leafoftree/vim-vue-plugin'
Plug 'vim-scripts/loremipsum'
Plug 'kyazdani42/nvim-web-devicons'
Plug 'folke/trouble.nvim'
call plug#end()

let g:oceanic_material_allow_bold = 0
let g:oceanic_material_allow_italic = 1
let g:oceanic_material_allow_underline = 1
let g:oceanic_material_allow_undercurl = 1
let g:oceanic_material_allow_reverse = 0
let g:oceanic_material_background = "darker"
let g:oceanic_material_transparent_background = 1
let g:oceanic_next_terminal_bold = 1
let g:oceanic_next_terminal_italic = 1

let g:material_style = 'darker'


hi LineNr guibg=NONE ctermbg=NONE
hi SignColumn guibg=NONE ctermbg=NONE
hi EndOfBuffer guibg=NONE ctermbg=NONE

if exists('termguicolors')
   let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
   let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"
   set termguicolors
endif

colorscheme oceanic_material

command! -nargs=? -range=% -complete=custom,s:StripCompletionOptions
      \ StripTrailingWhitespace <line1>,<line2>call s:StripTrailingWhitespace(<f-args>)

function! s:StripTrailingWhitespace(...) abort
  let confirm = a:0
  execute a:firstline . ',' . a:lastline . 's/\s\+$//e' . (confirm ? 'c' : '')
endfunction

function! s:StripCompletionOptions(A,L,P) abort
  return "-confirm"
endfunction

"leader
let mapleader = " "

let g:lightline = {
      \ 'colorscheme': 'oceanic_material',
      \ }


"Airline
let g:airline#extensions#tabline#enabled = 1  " show open buffers (like tabs)
let g:airline#extensions#tabline#fnamemod = ':t'  " Show only filename
let g:airline_powerline_fonts = 1 " Change separetors to be triangles
let g:airline_theme='onedark'

"map <leader><tab> :CocCommand explorer<CR>

let g:javascript_plugin_jsdoc = 1
let g:javascript_plugin_flow = 1

"indentline
let g:indentLine_char_list = ['|', '¦']
nnoremap <leader>e :e $MYVIMRC<CR>


let g:UltiSnipsExpandTrigger       = "<c-j>"
let g:UltiSnipsJumpForwardTrigger  = "<c-j>"
let g:UltiSnipsJumpBackwardTrigger = "<c-p>"
let g:UltiSnipsListSnippets        = "<c-k>" "List possible snippets based on current file
"-------------------------------------keys
"Use F5 to refresh your editor with the config file that you specify here
nmap <F5> :source ~/.config/nvim/init.vim<CR>
vmap <F5> :source ~/.config/nvim/init.vim<CR>

nnoremap <leader>w :w<CR>

" Move to the next buffer
" Move to the prevoius buffer
nnoremap <leader>j :bprevious<CR>
nnoremap <leader>k :bnext<CR>

let g:python_highlight_all = 1

let g:prettier#config#single_quote = 'true'
let g:prettier#config#trailing_comma = 'all'

let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<c-b>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"
let g:UltiSnipsEditSplit="vertical"

let g:ctrlp_user_command = ['.git/', 'git --git-dir=%s/.git ls-files -oc --exclude-standard']

autocmd FileType python set sw=4
autocmd FileType python set ts=4
autocmd FileType python set sts=4

" coc config
let g:coc_global_extensions = [
  \ 'coc-snippets',
  \ 'coc-pairs',
  \ 'coc-tsserver',
  \ 'coc-eslint',
  \ 'coc-prettier',
  \ 'coc-json',
  \ 'coc-python',
  \ 'coc-html'
  \ ]

let g:ycm_collect_identifiers_from_tags_files = 1 " Let YCM read tags from Ctags file
let g:ycm_use_ultisnips_completer = 1 " Default 1, just ensure
let g:ycm_seed_identifiers_with_syntax = 1 " Completion for programming language's keyword
let g:ycm_complete_in_comments = 1 " Completion in comments
let g:ycm_complete_in_strings = 1 " Completion in string

lua <<EOF
require'nvim-treesitter.configs'.setup {
  ensure_installed = "maintained", -- one of "all", "maintained" (parsers with maintainers), or a list of languages
  highlight = {
    enable = true,              -- false will disable the whole extension
    disable = { "c", "rust" },  -- list of language that will be disabled
  },
}

EOF

lua << EOF
  require("trouble").setup {
    -- your configuration comes here
    -- or leave it empty to use the default settings
    -- refer to the configuration section below
  }
EOF

nnoremap <leader>xx <cmd>TroubleToggle<cr>
nnoremap <leader>xw <cmd>TroubleToggle lsp_workspace_diagnostics<cr>
nnoremap <leader>xd <cmd>TroubleToggle lsp_document_diagnostics<cr>
nnoremap <leader>xq <cmd>TroubleToggle quickfix<cr>
nnoremap <leader>xl <cmd>TroubleToggle loclist<cr>
nnoremap gR <cmd>TroubleToggle lsp_references<cr>

let g:vim_vue_plugin_config = {
      \'syntax': {
      \   'template': ['html', 'pug'],
      \   'script': ['javascript', 'typescript', 'coffee'],
      \   'style': ['css', 'scss', 'sass', 'less', 'stylus'],
      \   'i18n': ['json', 'yaml'],
      \   'route': 'json',
      \},
      \'full_syntax': ['json'],
      \'initial_indent': ['i18n', 'i18n.json', 'yaml'],
      \'attribute': 1,
      \'keyword': 1,
      \'foldexpr': 1,
      \'debug': 0,
      \}

" Example
autocmd FileType vue inoremap <buffer><expr> : InsertColon()

function! InsertColon()
  let tag = GetVueTag()
  return tag == 'template' ? ':' : ': '
endfunction

" Example: set local options based on syntax
function! OnChangeVueSyntax(syntax)
  echom 'Syntax is '.a:syntax
  if a:syntax == 'html'
    setlocal commentstring=<!--%s-->
    setlocal comments=s:<!--,m:\ \ \ \ ,e:-->
  elseif a:syntax =~ 'css'
    setlocal comments=s1:/*,mb:*,ex:*/ commentstring&
  else
    setlocal commentstring=//%s
    setlocal comments=sO:*\ -,mO:*\ \ ,exO:*/,s1:/*,mb:*,ex:*/,://
  endif
endfunction


" Close the current buffer
"create a new tab
nnoremap <leader>q :bdelete<CR>

let g:vim_vue_plugin_config = {
      \'syntax': {
      \   'template': ['html'],
      \   'script': ['javascript'],
      \   'style': ['css'],
      \},
      \'full_syntax': [],
      \'initial_indent': [],
      \'attribute': 0,
      \'keyword': 0,
      \'foldexpr': 0,
      \'debug': 0,
      \}

let g:closetag_filetypes = 'html,xhtml,phtml,javascript,typescript'
let g:closetag_regions = {
      \ 'typescript.tsx': 'jsxRegion,tsxRegion,litHtmlRegion',
      \ 'javascript.jsx': 'jsxRegion,litHtmlRegion',
      \ 'javascript':     'litHtmlRegion',
      \ 'typescript':     'litHtmlRegion',
      \ }


" open new split panes to right and below
set splitright
set splitbelow
" turn terminal to normal mode with escape
tnoremap <Esc> <C-\><C-n>
" start terminal in insert mode
au BufEnter * if &buftype == 'terminal' | :startinsert | endif
" open terminal on ctrl+n
function! OpenTerminal()
split term://zsh
resize 10
endfunction
nnoremap <c-n> :call OpenTerminal()<CR>

" use alt+hjkl to move between split/vsplit panels
tnoremap <A-h> <C-\><C-n><C-w>h
tnoremap <A-j> <C-\><C-n><C-w>j
tnoremap <A-k> <C-\><C-n><C-w>k
tnoremap <A-l> <C-\><C-n><C-w>l
nnoremap <A-h> <C-w>h
nnoremap <A-j> <C-w>j
nnoremap <A-k> <C-w>k
nnoremap <A-l> <C-w>l

nnoremap <silent> // :noh<CR>

"With the arrow keys you can resize your splits
nnoremap <silent> <right> :vertical resize +5<CR>
nnoremap <silent> <left> :vertical resize -5<CR>
nnoremap <silent> <up> :resize +5<CR>
nnoremap <silent> <down> :resize -5<CR>


nnoremap <leader>vs :vsp<CR>
nnoremap <leader>sp :sp<CR>
map <leader>p :Prettier<CR>
nnoremap <leader>t :tabe<CR>

"disable the arrow keys to navigate. This is very useful when you want to
"adapt to 'hjkl'
"noremap <up> <nop>
"noremap <down> <nop>
"noremap <left> <nop>
"noremap <right> <nop>

"nnoremap <C-p> :FZF<CR>
"let g:fzf_action = {
"  \ 'ctrl-t': 'tab split',
"  \ 'ctrl-s': 'split',
"  \ 'ctrl-v': 'vsplit'
"  \}

let g:pep8_map='<leader>f'
let python_pep8_indent_hang_closing = 1

" Vim devicons
if exists("g:loaded_webdevicons")
  call webdevicons#refresh()
endif
"configuring the highlight devicons
let g:NERDTreeFileExtensionHighlightFullName = 1
let g:NERDTreeExactMatchHighlightFullName = 1
let g:NERDTreePatternMatchHighlightFullName = 1

nnoremap <C-p> <cmd>Telescope find_files<cr>
nnoremap <leader>fg <cmd>Telescope live_grep<cr>
nnoremap <leader>fb <cmd>Telescope buffers<cr>
nnoremap <leader>fh <cmd>Telescope help_tags<cr>

"vim emmet configuration
let g:user_emmet_leader_key='<C-Z>'

" Colors
let s:gray     = [245, '#3f4b59']
let s:darkgray = [245, '#1d1f21']
let s:golden   = [143, '#BBE67E']
let s:pink     = [131, '#F07178']
let s:blue     = [ 67, '#D4BFFF']
let s:orange   = [166, '#ffae57']
let s:outerfg  = [ 16, '#8d96a1']
let s:outerfgi = [ 16, '#2f3d4d']

" Backgrounds
let s:outerbg  = [ 16, 'NONE']
let s:innerbg  = [234, 'NONE']

" Normal mode
let s:N1 = [s:outerfg[1], s:outerbg[1], s:outerfg[0], s:gray[0]]
let s:N3 = [s:gray[1]   , s:innerbg[1], s:gray[0]   , s:innerbg[0]]

" Normal mode - modified
let s:NM1 = [s:darkgray[1], s:orange[1], s:darkgray[0], s:orange[0]]
let s:NM3 = [s:orange[1]  , s:outerbg[1], s:orange[0], s:darkgray[0]]

" Insert mode
let s:I1 = [s:darkgray[1], s:golden[1], s:outerfg[0], s:golden[0]]
let s:I3 = [s:golden[1]  , s:innerbg[1], s:golden[0], s:innerbg[0]]

" Visual mode
let s:V1 = [s:darkgray[1], s:pink[1], s:outerfg[0], s:pink[0]]
let s:V3 = [s:pink[1]    , s:innerbg[1], s:pink[0], s:innerbg[0]]

" Replace mode
let s:R1 = [s:darkgray[1], s:blue[1], s:outerfg[0], s:blue[0]]
let s:R3 = [s:blue[1], s:innerbg[1], s:blue[0], s:innerbg[0]]

" Inactive pane
let s:IA = [s:darkgray[1], s:outerbg[1], s:innerbg[0], s:innerbg[0]]
let s:IAc = [s:gray[1], s:outerbg[1], s:outerbg[0], s:outerbg[0]]

let g:airline#themes#transparent#palette = {}
let g:airline#themes#transparent#palette.accents = {
    \ 'red': ['#d70000', '', 160, '', '']}

let g:airline#themes#transparent#palette.inactive = {
    \ 'airline_a': s:IA,
    \ 'airline_b': s:IA,
    \ 'airline_c': s:IAc,
    \ 'airline_x': s:IA,
    \ 'airline_y': s:IA,
    \ 'airline_z': s:IA}

let g:airline#themes#transparent#palette.inactive_modified = {
    \ 'airline_a': s:IA,
    \ 'airline_b': s:IA,
    \ 'airline_c': s:NM3,
    \ 'airline_x': s:IA,
    \ 'airline_y': s:IA,
    \ 'airline_z': s:IA}

let g:airline#themes#transparent#palette.normal = {
    \ 'airline_a': s:N1,
    \ 'airline_b': s:N3,
    \ 'airline_c': s:N3,
    \ 'airline_x': s:N3,
    \ 'airline_y': s:N3,
    \ 'airline_z': s:N3}

let g:airline#themes#transparent#palette.normal_modified = {
    \ 'airline_a': s:NM1,
    \ 'airline_b': s:N3,
    \ 'airline_c': s:N3,
    \ 'airline_x': s:N3,
    \ 'airline_y': s:N3,
    \ 'airline_z': s:NM3}

let g:airline#themes#transparent#palette.insert = {
    \ 'airline_a': s:I1,
    \ 'airline_b': s:N3,
    \ 'airline_c': s:N3,
    \ 'airline_x': s:N3,
    \ 'airline_y': s:N3,
    \ 'airline_z': s:I3}
let g:airline#themes#transparent#palette.insert_modified = {}

let g:airline#themes#transparent#palette.replace = {
    \ 'airline_a': s:R1,
    \ 'airline_b': s:N3,
    \ 'airline_c': s:N3,
    \ 'airline_x': s:N3,
    \ 'airline_y': s:N3,
    \ 'airline_z': s:R3}
let g:airline#themes#transparent#palette.replace_modified = {}

let g:airline#themes#transparent#palette.visual = {
    \ 'airline_a': s:V1,
    \ 'airline_b': s:N3,
    \ 'airline_c': s:N3,
    \ 'airline_x': s:N3,
    \ 'airline_y': s:N3,
    \ 'airline_z': s:V3}
let g:airline#themes#transparent#palette.visual_modified = {}

let g:deoplete#enable_at_startup = 1

" Warnings
let g:airline#themes#transparent#palette.normal.airline_warning = s:NM1

let g:airline#themes#transparent#palette.normal_modified.airline_warning =
    \ g:airline#themes#transparent#palette.normal.airline_warning

let g:airline#themes#transparent#palette.insert.airline_warning =
    \ g:airline#themes#transparent#palette.normal.airline_warning

let g:airline#themes#transparent#palette.insert_modified.airline_warning =
    \ g:airline#themes#transparent#palette.normal.airline_warning

let g:airline#themes#transparent#palette.visual.airline_warning =
    \ g:airline#themes#transparent#palette.normal.airline_warning

let g:airline#themes#transparent#palette.visual_modified.airline_warning =
    \ g:airline#themes#transparent#palette.normal.airline_warning

let g:airline#themes#transparent#palette.replace.airline_warning =
    \ g:airline#themes#transparent#palette.normal.airline_warning

let g:airline#themes#transparent#palette.replace_modified.airline_warning =
    \ g:airline#themes#transparent#palette.normal.airline_warning


" Errors
let g:airline#themes#transparent#palette.normal.airline_error = s:V1

let g:airline#themes#transparent#palette.normal_modified.airline_error =
      \ g:airline#themes#transparent#palette.normal.airline_error

let g:airline#themes#transparent#palette.insert.airline_error =
      \ g:airline#themes#transparent#palette.normal.airline_error

let g:airline#themes#transparent#palette.insert_modified.airline_error =
      \ g:airline#themes#transparent#palette.normal.airline_error

let g:airline#themes#transparent#palette.insert_modified.airline_error =
      \ g:airline#themes#transparent#palette.normal.airline_error

let g:airline#themes#transparent#palette.visual.airline_error =
      \ g:airline#themes#transparent#palette.normal.airline_error

let g:airline#themes#transparent#palette.visual_modified.airline_error =
      \ g:airline#themes#transparent#palette.normal.airline_error

let g:airline#themes#transparent#palette.replace.airline_error =
      \ g:airline#themes#transparent#palette.normal.airline_error

let g:airline#themes#transparent#palette.replace_modified.airline_error =
      \ g:airline#themes#transparent#palette.normal.airline_error

