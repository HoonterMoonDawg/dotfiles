"~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ Builtin Mappings {{{ ~~~~~

" Set leader key
let g:mapleader=','

" Human readable runtimepath
nmap <leader>rt :echo join(split(&runtimepath, ','), "\n")<CR>

" Save and quit mappings
nmap <leader>q :q!<CR>
nmap <leader>w :w!<CR>

" Toggle location list
nmap <leader>lo :lopen<CR>
nmap <leader>lc :lclose<CR>

" Quick fix toggle
nmap <leader>co :copen<CR>
nmap <leader>cq :cclose<CR>

" Buffer navigation
nmap L :bn<CR>
nmap H :bp<CR>

"~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ }}} ~~~~~

"~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ Plugin Mappings {{{ ~~~~~

"~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ FZF Mappings {{{2 ~~~~~

nmap <leader>F :GFiles<CR>
nmap <leader>f :Files<CR>
nmap <leader>n :Buffers<CR>

"~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ }}}2 ~~~~~

"~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ Vista.vim Mappings {{{2 ~~~~~

nmap <F2> :Vista!!<CR>

"~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ }}}2 ~~~~~

"~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ }}} ~~~~~
