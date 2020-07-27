call plug#begin('~/.local/vim/plugged')
  Plug 'mcchrish/nnn.vim'
  Plug 'dhruvasagar/vim-table-mode'
  Plug 'sheerun/vim-polyglot'
  Plug 'terryma/vim-multiple-cursors'
  Plug 'jiangmiao/auto-pairs'
  Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
  Plug 'junegunn/fzf.vim'
  Plug 'tpope/vim-fugitive'
  Plug 'airblade/vim-gitgutter'
call plug#end()

set undofile undodir=~/.local/vim/undodir
set tabstop=2 shiftwidth=2 expandtab
set ignorecase
set smartcase
"set foldmethod=indent
set laststatus=0

set noshowmode
set noruler
set laststatus=0
set noshowcmd
set cmdheight=1

command W w
command Wq wq


let g:nnn#layout = { 'left': '~20%' }
let g:nnn#action = {
      \ '<c-z>': 'split',
      \ '<c-x>': 'vsplit' }
nnoremap <Tab> :NnnPicker<CR>

vnoremap <Tab>      >gv
vnoremap <S-Tab>    <gv

nnoremap ;          :
vnoremap ;          :

nnoremap <C-J>      <C-W><C-J>
nnoremap <C-K>      <C-W><C-K>
nnoremap <C-L>      <C-W><C-L>
nnoremap <C-H>      <C-W><C-H>

nnoremap j          gj
nnoremap k          gk

nnoremap <C-p>     :Files<cr>
nnoremap <leader>s :Rg<cr>

autocmd BufWritePost *sxhkdrc !pkill -USR1 -x sxhkd

set background=dark
set cursorline
highlight clear
syntax reset

highlight Boolean            ctermbg=NONE         ctermfg=darkgreen
highlight Character          ctermbg=NONE         ctermfg=darkgreen
highlight ColorColumn        ctermbg=white        ctermfg=red
highlight Comment            ctermbg=NONE         ctermfg=darkgray
highlight Condtional         ctermbg=NONE         ctermfg=red
highlight Constant           ctermbg=NONE         ctermfg=red
highlight Cursor             ctermbg=NONE         ctermfg=NONE
highlight CursorLine         ctermbg=NONE         cterm=bold
highlight Debug              ctermbg=white        ctermfg=NONE
highlight Define             ctermbg=NONE         ctermfg=darkred
highlight Delimiter          ctermbg=NONE         ctermfg=blue
highlight DiffAdd            ctermbg=NONE         ctermfg=darkblue
highlight DiffChange         ctermbg=NONE         ctermfg=darkgreen
highlight DiffDelete         ctermbg=NONE         ctermfg=darkred
highlight DiffText           ctermbg=NONE         ctermfg=white
highlight Directory          ctermbg=NONE         ctermfg=darkred
highlight Error              ctermbg=NONE         cterm=bold
highlight ErrorMsg           ctermbg=NONE         ctermfg=darkred
highlight Exception          ctermbg=NONE         ctermfg=darkred
highlight Float              ctermbg=NONE         ctermfg=darkgreen
highlight FoldColumn         ctermbg=NONE         ctermfg=white
highlight Folded             ctermbg=NONE         ctermfg=white
highlight Function           ctermbg=NONE         ctermfg=red
highlight Identifier         ctermbg=NONE         ctermfg=white
highlight Include            ctermbg=NONE         ctermfg=red
highlight IncSearch          ctermbg=white        ctermfg=NONE
highlight Keyword            ctermbg=NONE         ctermfg=darkred
highlight Label              ctermbg=NONE         ctermfg=darkred
highlight LineNr             ctermbg=NONE         ctermfg=red
highlight Macro              ctermbg=NONE         ctermfg=red
highlight MatchParen         ctermbg=white        ctermfg=NONE
highlight MoreMsg            ctermbg=NONE         ctermfg=white
highlight NonText            ctermbg=NONE         ctermfg=red
highlight Normal             ctermbg=NONE         ctermfg=white
highlight Number             ctermbg=NONE         ctermfg=darkgreen
highlight Operator           ctermbg=NONE         ctermfg=blue
highlight PreCondit          ctermbg=NONE         ctermfg=darkred
highlight PreProc            ctermbg=NONE         ctermfg=white
highlight Pmenu              ctermbg=gray         ctermfg=black
highlight PmenuSel           ctermbg=white        ctermfg=black
highlight PmenuSbar          ctermbg=gray         ctermfg=black
highlight Pmenuthumb         ctermbg=gray         ctermfg=black
highlight Question           ctermbg=NONE         ctermfg=blue
highlight Repeat             ctermbg=NONE         ctermfg=darkred
highlight Search             ctermbg=darkred      ctermfg=NONE
highlight SpecialChar        ctermbg=NONE         ctermfg=darkred
highlight SpecialComment     ctermbg=NONE         ctermfg=darkred
highlight Special            ctermbg=NONE         ctermfg=darkred
highlight SpecialKey         ctermfg=darkyellow   ctermbg=NONE
highlight SpellBad           ctermbg=red          ctermfg=white
highlight SpellCap           ctermbg=NONE         ctermfg=darkred
highlight SpellLocal         ctermbg=NONE         ctermfg=darkred
highlight SpellRare          ctermbg=NONE         ctermfg=white
highlight Statement          ctermbg=NONE         ctermfg=darkred
highlight StatusLine         ctermbg=NONE         ctermfg=NONE
highlight StorageClass       ctermbg=NONE         ctermfg=Red
highlight String             ctermbg=NONE         ctermfg=darkgreen
highlight Structure          ctermbg=NONE         ctermfg=darkgreen
highlight TabLineFill        ctermbg=NONE         ctermfg=white
highlight Tag                ctermbg=NONE         ctermfg=blue
highlight Title              ctermbg=NONE         ctermfg=blue
highlight Todo               ctermbg=NONE         ctermfg=red
highlight Type               ctermbg=NONE         ctermfg=blue
highlight Typedef            ctermbg=NONE         ctermfg=darkgreen
highlight VertSplit          ctermbg=white        ctermfg=white
highlight Visual             ctermbg=darkgray     ctermfg=NONE
highlight VisualNOS          ctermbg=NONE         ctermfg=white
highlight WildMenu           ctermbg=NONE         ctermfg=white
highlight WarningMsg         ctermbg=NONE         ctermfg=red

highlight def link diffCommon   Statement
highlight def link diffRemoved  DiffDelet
highlight def link diffChanged  DiffChang
highlight def link diffAdded    DiffAdd
