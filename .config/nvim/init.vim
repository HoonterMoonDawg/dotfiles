"~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ Plugins{{{ ~~~~~
call plug#begin(stdpath('data') . '/plugged')

Plug '~/.fzf'
Plug 'junegunn/fzf.vim'
Plug 'joshdick/onedark.vim'
Plug 'challenger-deep-theme/vim', { 'as': 'challenger-deep' }
Plug 'soares/base16.nvim'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'jiangmiao/auto-pairs'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'ryanoasis/vim-devicons'
Plug 'liuchengxu/vista.vim'
Plug 'sheerun/vim-polyglot'
Plug 'airblade/vim-gitgutter'
Plug 'preservim/nerdcommenter'
Plug 'cometsong/commentframe.vim'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-abolish'
Plug 'wellle/targets.vim'
Plug 'honza/vim-snippets'
 
call plug#end()

"~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ }}} ~~~~~

"~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ {{{ Builtin Settings ~~~~~

""" Folds
set foldmethod=marker

""" Keep hidden buffers
set hidden

""" Numbers in sidebar
set number
set relativenumber

""" Color settings
set termguicolors
set background=dark
let g:airline_theme='onedark'
colorscheme challenger_deep

hi! Normal ctermbg=NONE guibg=NONE
hi! NonText ctermbg=NONE guibg=NONE

""" Tab behaviour
set tabstop=4
set shiftwidth=4
set expandtab
set smarttab
set autoindent

""" More space to display messages
set cmdheight=2

""" Coc nvim. Default is way too long (4000 ms!!!)
set updatetime=300

""" Keep messages out of completion menu
set shortmess+=c

""" Always display sign column
set signcolumn=yes

""" Better searching
set incsearch
set ignorecase
set smartcase
set hlsearch

""" No lame backup files
set nobackup
set nowritebackup
set noswapfile

""" Hide current editing mode
set noshowmode

""" Fix the stupid ass backspace
set backspace=indent,eol,start

""" Persistent undo for my stupid mistakes
set undofile
set undodir=/tmp

""" Disable auto commenting of new lines
au BufEnter * set fo-=c fo-=r fo-=o

""" Better splits
set splitright
set splitbelow

""" Disable line wrapping
set nowrap

"~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ }}} ~~~~~

"~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ Plugin Settings {{{ ~~~~~


"~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ Coc Nvim {{{2 ~~~~~

let g:coc_node_path='$HOME/.config/nvm/versions/node/v12.18.2/bin/node'

""" Tab triggers completion
inoremap <silent><expr> <TAB>
    \ pumvisible() ? "\<C-n>" :
    \ <SID>check_back_space() ? "\<TAB>" :
    \ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

function! s:check_back_space() abort
    let col = col('.') - 1
    return !col || getline('.')[col - 1] =~# '\s'
endfunction

""" Use <C-space> to trigger completion
inoremap <silent><expr> <c-space> coc#refresh()

""" <CR> confirms completion
inoremap <expr> <cr> complete_info()["selected"] != "-1" ? "\<C-y>" : "\<C-g>u\<CR>"

""" <C-l> expands snippet
imap <C-l> <Plug>(coc-snippets-expand)

""" <C-j> selects text for snippet placeholder
vmap <C-j> <Plug>(coc-snippets-select)

""" <C-j> also jumps to next placeholder

""" <C-k> jumps to previous placeholder
let g:coc_snippet_prev = '<C-k>'

""" `[g` and `]g` navigate diagnostics
nmap <silent> [g <Plug>(coc-diagnostics-prev)
nmap <silent> ]g <Plug>(coc-diagnostics-next)

""" Goto mappings
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

""" Show documentation in preview window
nnoremap <silent> K :call <SID>show_documentation()<CR>

function! s:show_documentation()
    if (index(['vim', 'help'], &filetype) >= 0)
        execute 'h '.expand('<cword>')
    else
        call CocAction('doHover')
    endif
endfunction

""" Autofix current line
nmap <leader>qf <Plug>(coc-fix-current)

""" Statusline support
set statusline^=%{coc#status()}%{get(b:,'coc_current_function','')}

""" Show diagnostics
nnoremap <silent> <space>a :<C-u>CocList diagnostics<CR>

""" Manage extensions
nnoremap <silent> <space>e :<C-u>CocList extensions<CR>

""" Show commands
nnoremap <silent> <space>c :<C-u>CocList commands<CR>

""" Find symbol in document
nnoremap <silent> <space>o :<C-u>CocList outline<CR>

""" Find symbol in workspace
nnoremap <silent> <space>s :<C-u>CocList -I symbols<CR>

"~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ }}}2 ~~~~~

"~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ Vim Airline {{{2 ~~~~~

let g:airline_powerline_fonts = 1

let g:airline#extensions#tabline#enabled = 1


"~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ }}}2 ~~~~~


"~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ FZF {{{2 ~~~~~

command! -bang -nargs=? -complete=dir Files
    \ call fzf#vim#files(<q-args>, fzf#vim#with_preview({'options': ['--layout=reverse', '--info=inline']}), <bang>0)

let g:fzf_layout = { 'window': { 'width': 0.9, 'height': 0.6 } }

"~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ }}}2 ~~~~~

