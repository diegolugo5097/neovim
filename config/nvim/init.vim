syntax on
set mouse=a
set noerrorbells
set sw=2
set rnu
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
"set completeopt=noselect,menuone
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


call plug#begin('~/.local/share/nvim/plugged')

"Themes
Plug 'challenger-deep-theme/vim', { 'as': 'challenger-deep' }
Plug 'kaicataldo/material.vim', { 'branch': 'main' }
Plug 'ayu-theme/ayu-vim'
Plug 'lifepillar/vim-gruvbox8'
Plug 'adrian5/oceanic-next-vim'
Plug 'pineapplegiant/spaceduck', { 'branch': 'main' }
Plug 'mhartington/oceanic-next'
Plug 'glepnir/oceanic-material'
Plug 'morhetz/gruvbox'
Plug 'projekt0n/github-nvim-theme'
Plug 'yashguptaz/calvera-dark.nvim'
Plug 'ghifarit53/tokyonight-vim'
Plug 'RobertYan/monokai-soda'
Plug 'rakr/vim-one'
Plug 'srcery-colors/srcery-vim'
Plug 'sonph/onehalf', {'rtp': 'vim/'}
Plug 'rakr/vim-two-firewatch'
Plug 'jacoborus/tender.vim'
Plug 'sickill/vim-monokai'
Plug 'rakr/vim-one'
Plug 'rishikanthc/skyfall-vim'
Plug 'joshdick/onedark.vim'
Plug 'eddyekofo94/gruvbox-flat.nvim'

"Visual
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'dikiaap/minimalist'
Plug 'ryanoasis/vim-devicons'
Plug 'Yggdroot/indentLine'
Plug 'ap/vim-css-color'
Plug 'tiagofumo/vim-nerdtree-syntax-highlight'
Plug 'sheerun/vim-polyglot'

"Functionality
Plug 'vim-python/python-syntax'
Plug 'preservim/nerdtree'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
Plug 'Vimjas/vim-python-pep8-indent'
Plug 'honza/vim-snippets'
Plug 'mxw/vim-jsx'
Plug 'yuezk/vim-js'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'pangloss/vim-javascript'
Plug 'maxmellon/vim-jsx-pretty'
Plug 'davidhalter/jedi-vim'
Plug 'pappasam/coc-jedi', { 'do': 'yarn install --frozen-lockfile && yarn build' }


"Code Modification
Plug 'scrooloose/nerdcommenter'
Plug 'SirVer/ultisnips'
Plug 'jiangmiao/auto-pairs'
Plug 'mattn/emmet-vim'
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}  " We recommend updating the parsers on update
Plug 'cburroughs/pep8.py'
Plug 'Vimjas/vim-python-pep8-indent'
Plug 'python-mode/python-mode', { 'for': 'python', 'branch': 'develop' }
call plug#end()

set background=dark
let ayucolor="mirage"
let g:oceanic_bold = 0
let g:oceanic_for_polyglot = 1
let g:material_terminal_italics = 1
let g:material_theme_style = 'ocean-community'
let g:gruvbox_costract_dark="hard"
let g:calvera_italic_comments = 1
let g:calvera_italic_keywords = 1
let g:calvera_italic_functions = 1
let g:calvera_contrast = 1
let g:tokyonight_style = 'storm' " available: night, storm
let g:tokyonight_enable_italic = 1
let g:oceanic_material_transparent_background = 0
let g:oceanic_material_allow_bold = 0
let g:oceanic_material_allow_italic = 1
let g:gruvbox_italic = 1
let g:oceanic_material_allow_underline = 1
let g:oceanic_material_allow_undercurl = 1
let g:oceanic_material_allow_reverse = 0
let g:oceanic_material_background = "darker"
let g:oceanic_next_terminal_bold = 1
let g:oceanic_next_terminal_italic = 1
let g:one_allow_italics = 1 " I love italic for comments
let g:srcery_italic = 1
let g:srcery_red = '#FF0000'

"transparent config
"au ColorScheme * hi Normal ctermbg=none guibg=none
"au ColorScheme myspecialcolors hi Normal ctermbg=red guibg=redhi Normal guibg=NONE ctermbg=NONE

hi LineNr guibg=NONE ctermbg=NONE
hi SignColumn guibg=NONE ctermbg=NONE
hi EndOfBuffer guibg=NONE ctermbg=NONE

if exists('termguicolors')
   let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
   let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"
   set termguicolors
endif

colorscheme gruvbox8

"leader
let mapleader = " "

let g:lightline = {
      \ 'colorscheme': 'gruvbox8',
      \ }

"Airline
let g:airline#extensions#tabline#enabled = 1  " show open buffers (like tabs)
let g:airline#extensions#tabline#fnamemod = ':t'  " Show only filename
let g:airline_powerline_fonts = 1 " Change separetors to be triangles
let g:airline_theme='minimalist'

"NERDTree
"autocmd StdinReadPre * let s:std_in=1
"autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
"Keymap of the file browser
let g:NERDTreeChDirMode = 2 "Change the current directory to the current node father
let g:neoformat_try_formatprg = 1
map <leader><tab> :NERDTreeToggle<CR>
nmap <Leader>r :NERDTreeFocus<cr>R<c-w><c-p>

command! -nargs=0 Prettier :call CocAction('runCommand', 'prettier.formatFile')


let g:NERDTreeDirArrowExpandable = ''
let g:NERDTreeDirArrowCollapsible = ''

let g:WebDevIconsDisableDefaultFolderSymbolColorFromNERDTreeDir = 1
let g:WebDevIconsDisableDefaultFileSymbolColorFromNERDTreeFile = 1

let g:NERDTreeDisableFileExtensionHighlight = 1
let g:NERDTreeDisableExactMatchHighlight = 1
let g:NERDTreeDisablePatternMatchHighlight = 1

let g:NERDTreeFileExtensionHighlightFullName = 1
let g:NERDTreeExactMatchHighlightFullName = 1
let g:NERDTreePatternMatchHighlightFullName = 1

let g:NERDTreeHighlightFolders = 1 " enables folder icon highlighting using exact match
let g:NERDTreeHighlightFoldersFullName = 1 " highlights the folder name

"* Disable Highlight for specific file extension vim
" If you have vim-devicons you can customize your icons for each file type.
let g:NERDTreeExtensionHighlightColor = {} "this line is needed to avoid error
let g:NERDTreeExtensionHighlightColor['css'] = '' "assigning it to an empty string will skip highlighd

let g:NERDTreeLimitedSyntax = 1

let g:NERDTreeSyntaxDisableDefaultExtensions = 1
let g:NERDTreeSyntaxDisableDefaultExactMatches = 1
let g:NERDTreeSyntaxDisableDefaultPatternMatches = 1

" set g:NERDTreeExtensionHighlightColor if you want a custom color instead of the default one
let g:NERDTreeSyntaxEnabledExtensions = ['hbs', 'lhs'] " enable highlight to .hbs and .lhs files with default colors
let g:NERDTreeSyntaxEnabledExactMatches = ['dropbox', 'node_modules', 'favicon.ico'] " enable highlight for dropbox and node_modules folders, and favicon.ico files with default colors

let g:NERDTreeLimitedSyntax = 1

let g:NERDTreeSyntaxDisableDefaultExtensions = 1
let g:NERDTreeSyntaxDisableDefaultExactMatches = 1
let g:NERDTreeSyntaxDisableDefaultPatternMatches = 1
let g:NERDTreeSyntaxEnabledExtensions = ['c', 'h', 'c++', 'cpp', 'php', 'rb', 'js', 'css', 'html', 'python'] " enabled extensions with default colors
let g:NERDTreeSyntaxEnabledExactMatches = ['node_modules', 'favicon.ico'] " enabled exact matches with default colors
let g:NERDTreeHighlightCursorline = 0
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
  \ ]

let g:ycm_collect_identifiers_from_tags_files = 1 " Let YCM read tags from Ctags file
let g:ycm_use_ultisnips_completer = 1 " Default 1, just ensure
let g:ycm_seed_identifiers_with_syntax = 1 " Completion for programming language's keyword
let g:ycm_complete_in_comments = 1 " Completion in comments
let g:ycm_complete_in_strings = 1 " Completion in string

lua <<EOF
require'nvim-treesitter.configs'.setup {
  ensure_installed = "maintained", -- one of "all", "maintained" (parsers with maintainers), or a list of languages
  ignore_install = { "javascript" }, -- List of parsers to ignore installing
  highlight = {
    enable = true,              -- false will disable the whole extension
    disable = { "c", "rust" },  -- list of language that will be disabled
  },
}


EOF

" Close the current buffer
"create a new tab
nnoremap <leader>q :bdelete<CR>

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

nnoremap <C-p> :FZF<CR>
let g:fzf_action = {
  \ 'ctrl-t': 'tab split',
  \ 'ctrl-s': 'split',
  \ 'ctrl-v': 'vsplit'
  \}

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

