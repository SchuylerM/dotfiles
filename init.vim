call plug#begin('~/.vim/plugged')
  Plug 'airblade/vim-gitgutter'
  Plug 'christoomey/vim-tmux-navigator'
  Plug 'morhetz/gruvbox'
  Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
  Plug 'junegunn/fzf.vim'
  Plug 'neoclide/coc.nvim', {'branch': 'release'}
  Plug 'tpope/vim-fugitive'
  Plug 'tpope/vim-commentary'
  Plug 'vim-airline/vim-airline'
  Plug 'Yggdroot/indentLine'
	Plug 'bazelbuild/vim-ft-bzl'
	Plug 'vim-autoformat/vim-autoformat'
	" Plug 'nvim-treesitter/nvim-treesitter', { 'do': { ':TSUpdate' }
call plug#end()

if executable('rg')
  set grepprg=rg\ --color=never
  set grepformat=%f:%l:%c:%m
  let g:ctrlp_user_command = 'rg %s --files --color=never --glob ""'
  let g:ctrlp_use_caching = 0
endif

set wildignore+=*/.git/*,*/tmp/*,*.swp

" Set leader character
let mapleader = "\<Space>"

set termguicolors

" Turn on syntax hilighting
syntax on

" Enable spell checking
set spell spelllang=en_us
set spellfile=~/.config/nvim/spell/en.utf-8.add

set bg=dark
let g:gruvbox_italic=1
let g:gruvbox_italicize_comments=1
let g:gruvbox_invert_signs=1
colorscheme gruvbox

" treesitter config
" lua <<EOF
" require'nvim-treesitter.configs'.setup {
"   ensure_installed = "maintained", -- one of "all", "maintained" (parsers with maintainers), or a list of languages
"   ignore_install = { "javascript" }, -- List of parsers to ignore installing
"   highlight = {
"     enable = true,              -- false will disable the whole extension
"     disable = { "c", "rust" },  -- list of language that will be disabled
"     -- Setting this to true will run `:h syntax` and tree-sitter at the same time.
"     -- Set this to `true` if you depend on 'syntax' being enabled (like for indentation).
"     -- Using this option may slow down your editor, and you may see some duplicate highlights.
"     -- Instead of true it can also be a list of languages
"     additional_vim_regex_highlighting = false,
"   },
" }
" EOF

" Override background colors so our transprency doesn't look off
highlight Normal guibg=none ctermbg=none
highlight Search cterm=underline

if has('gui_running')
    set guifont=Input:h10
    set guioptions=
endif

" Make backspaces suck less
set backspace=indent,eol,start

" Enable indenting
filetype indent plugin on
set autoindent


set hlsearch

" ...and disable it with <CR>
nnoremap <CR> :nohlsearch<CR>/<BS>

" Always show line numbers
set number
set signcolumn=auto

" Search things
set incsearch		" Enable incremental search
set ignorecase		" Ignore search case
set smartcase		" Override ignorecase if caps are used in search query

" Hilight the current line
set cursorline

" Configure a more informative statusline
set statusline=
set statusline +=%1*\ %n\ %*            "buffer number
set statusline +=%5*%{&ff}%*            "file format
set statusline +=%3*%y%*                "file type
set statusline +=%4*\ %<%F%*            "full path
set statusline +=%2*%m%*                "modified flag
set statusline +=%1*%=%5l%*             "current line
set statusline +=%2*/%L%*               "total lines
set statusline +=%1*%4v\ %*             "virtual column number
set statusline +=%2*0x%04B\ %*          "character under cursor

" Shorten the timout time for key combinations
set timeoutlen=100

" Remap  lkj to <Esc> in most modes
nmap <silent> lkj <Esc>
vmap <silent> lkj <Esc>
imap <silent> lkj <Esc>
map  <silent> lkj <Esc>

" Map ; to ;
map ; :

" Make Y act like D
map Y y$


noremap <C-h> <C-w><C-h>
noremap <C-j> <C-w><C-j>
noremap <C-k> <C-w><C-k>
noremap <C-l> <C-w><C-l>

" Make command completion more useful
set wildmenu

" Show whitespace
set listchars=tab:>-,trail:�,eol:$
nmap <silent> <leader>s :set nolist!<CR>

" Shorten time to show matching parens
set matchtime=100

set nowrap

noremap <silent> <leader>g :FZF<CR>
noremap <silent> <leader>t :GFiles<CR>
noremap <silent> <leader>r :FZF<CR>
noremap <silent> <leader>r :Rg<CR>
noremap <silent> <leader>y "*y
tnoremap <silent> <leader>y "*y
noremap <silent> <leader>p "*p
noremap <leader>w :w<CR>
noremap <leader>W :wq!<CR>

" prefer shorter tabs
set tabstop=2
set shiftwidth=2

" TODO: this might be causing issues
" autocmd Filetype go setlocal ts=4 sw=4 sts=4 noexpandtab
" autocmd FileType yml setlocal ts=2 sts=2 sw=2 expandtab
" autocmd FileType yaml setlocal ts=2 sts=2 sw=2 expandtab
" autocmd FileType eyaml setlocal ts=2 sts=2 sw=2 expandtab
" autocmd FileType c setlocal ts=4 sts=4 sw=4 expandtab
" autocmd FileType python let b:coc_root_patterns = ['.git', '.env', 'venv']
" autocmd BufNewFile,BufRead *.pp set syntax=ruby
" autocmd BufNewFile,BufRead *.eyaml set ft=yaml
" autocmd BufNewFile,BufRead Dockerfile.* set ft=dockerfile
" autocmd BufWritePre *.go :silent call CocAction('runCommand', 'editor.action.organizeImport')

" Window sizing
set equalalways
set wiw=110
" set winheight=60

" Create new Term splits to the right and below
set splitright
set splitbelow

let g:ctrlp_custom_ignore = {
  \ 'dir':  '\v[\/]\.(git|hg|svn)$',
  \ 'file': '\v\.(exe|so|dll|class|jar|apk|aar)$',
  \ 'link': 'some_bad_symbolic_links',
  \ }

" reopen last closed split
nmap <c-t> :vs<bar>:b#<CR>

" COC Stuff
" Load some extensions
let g:coc_global_extensions = ['coc-json', 'coc-rust-analyzer', 'coc-pyright', 'coc-yaml', 'coc-pyright', 'coc-java', 'coc-clangd']

" if hidden is not set, TextEdit might fail.
set hidden

" Some servers have issues with backup files, see #649
set nobackup
set nowritebackup

" Better display for messages
set cmdheight=1

" You will have bad experience for diagnostic messages when it's default 4000.
set updatetime=300

" don't give |ins-completion-menu| messages.
set shortmess+=c

" Use tab for trigger completion with characters ahead and navigate.
" Use command ':verbose imap <tab>' to make sure tab is not mapped by other plugin.
inoremap <silent><expr> <CR> coc#pum#visible() ? coc#pum#confirm() : "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"
    inoremap <silent><expr> <C-x><C-z> coc#pum#visible() ? coc#pum#stop() : "\<C-x>\<C-z>"
    inoremap <silent><expr> <TAB>
        \ coc#pum#visible() ? coc#pum#next(1):
        \ CheckBackspace() ? "\<Tab>" :
        \ coc#refresh()
    inoremap <expr><S-TAB> coc#pum#visible() ? coc#pum#prev(1) : "\<C-h>"
    inoremap <silent><expr> <c-space> coc#refresh()

function! CheckBackspace() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

" Use <c-space> to trigger completion.
inoremap <silent><expr> <c-space> coc#refresh()

" Use <cr> to confirm completion, `<C-g>u` means break undo chain at current position.
" Coc only does snippet and additional edit on confirm.
inoremap <expr> <cr> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"
" Or use `complete_info` if your vim support it, like:
" inoremap <expr> <cr> complete_info()["selected"] != "-1" ? "\<C-y>" : "\<C-g>u\<CR>"

" Use `[g` and `]g` to navigate diagnostics
nmap <silent> [g <Plug>(coc-diagnostic-prev)
nmap <silent> ]g <Plug>(coc-diagnostic-next)

" Remap keys for gotos
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

" Use K to show documentation in preview window
nnoremap <silent> K :call <SID>show_documentation()<CR>

function! s:show_documentation()
  if (index(['vim','help'], &filetype) >= 0)
    execute 'h '.expand('<cword>')
  else
    call CocAction('doHover')
  endif
endfunction

" Highlight symbol under cursor on CursorHold
" TODO
" autocmd CursorHold * silent call CocActionAsync('highlight')

" Remap for rename current word
nmap <leader>rn <Plug>(coc-rename)

" Remap for format selected region
xmap <leader>f  <Plug>(coc-format-selected)
nmap <leader>f  <Plug>(coc-format-selected)

" TODO: maybe undo?
" augroup mygroup
"   autocmd!
"   " Setup formatexpr specified filetype(s).
"   autocmd FileType typescript,json setl formatexpr=CocAction('formatSelected')
"   " Update signature help on jump placeholder
"   autocmd User CocJumpPlaceholder call CocActionAsync('showSignatureHelp')
" augroup end

" Remap for do codeAction of selected region, ex: `<leader>aap` for current paragraph
xmap <leader>a  <Plug>(coc-codeaction-selected)
nmap <leader>a  <Plug>(coc-codeaction-selected)

" Remap for do codeAction of current line
nmap <leader>ac  <Plug>(coc-codeaction)
" Fix autofix problem of current line
nmap <leader>qf  <Plug>(coc-fix-current)

" Create mappings for function text object, requires document symbols feature of languageserver.
xmap if <Plug>(coc-funcobj-i)
xmap af <Plug>(coc-funcobj-a)
omap if <Plug>(coc-funcobj-i)
omap af <Plug>(coc-funcobj-a)

" Use <C-d> for select selections ranges, needs server support, like: coc-tsserver, coc-python
" nmap <silent> <C-d> <Plug>(coc-range-select)
" xmap <silent> <C-d> <Plug>(coc-range-select)

" Use `:Format` to format current buffer
command! -nargs=0 Format :call CocAction('format')

" Use `:Fold` to fold current buffer
" command! -nargs=? Fold :call     CocAction('fold', <f-args>)

" use `:OR` for organize import of current buffer
command! -nargs=0 OR   :call     CocAction('runCommand', 'editor.action.organizeImport')

" Add status line support, for integration with other plugin, checkout `:h coc-status`
" set statusline^=%{coc#status()}%{get(b:,'coc_current_function','')}

" Using CocList
" Show all diagnostics
nnoremap <silent> <space>a  :<C-u>CocList diagnostics<cr>
" Manage extensions
nnoremap <silent> <space>e  :<C-u>CocList extensions<cr>
" Show commands
nnoremap <silent> <space>c  :<C-u>CocList commands<cr>
" Find symbol of current document
nnoremap <silent> <space>o  :<C-u>CocList outline<cr>
" Search workspace symbols
nnoremap <silent> <space>s  :<C-u>CocList -I symbols<cr>
" Do default action for next item.
nnoremap <silent> <space>j  :<C-u>CocNext<CR>
" Do default action for previous item.
nnoremap <silent> <space>k  :<C-u>CocPrev<CR>
" Resume latest coc list
nnoremap <silent> <space>p  :<C-u>CocListResume<CR>


" Don't conceal things (from indentLine)
let g:indentLine_setConceal = 0

" Less obnoxious error/hint hilighting
highlight! link CocErrorSign GruvboxRed
highlight! link CocWarningSign GruvboxYellow
" highlight link CocInfoSign
" highlight link CocHintSIgn

" GitGutter config
highlight! link GitGutterAdd GruvboxGreen
highlight! link GitGutterChange GruvboxAqua
highlight! link GitGutterDelete GruvboxRed
highlight! link GitGutterChangeDelete GruvboxAqua
let g:gitgutter_sign_added = "+"
let g:gitgutter_sign_modified = "~"
let g:gitgutter_sign_modified_removed = "~-"
let g:gitgutter_sign_removed = "-"
let g:gitgutter_sign_removed_first_line = "--"

" Make sign column and gutter uniform
highlight! link SignColumn LineNr

" vim-lsp-cxx-hilight config
let g:cpp_class_scope_highlight = 1
let g:cpp_member_variable_highlight = 1
let g:cpp_class_decl_highlight = 1

" fzf
" let g:fzf_layout = { 'window': 'vs' }
" let g:fzf_layout = { 'window': 'enew' }
" let g:fzf_layout = { 'window': '-tabnew' }
let g:fzf_layout = { 'window': '50new' }
" let g:fzf_layout = {'up':'~90%', 'window': { 'width': 0.8, 'height': 0.8,'yoffset':0.5,'xoffset': 0.5, 'highlight': 'Todo', 'border': 'sharp' } }
let $FZF_DEFAULT_OPTS = '--layout=reverse --info=inline'
let $FZF_DEFAULT_COMMAND="rg --files --hidden"

let g:fzf_colors =
\ { 'fg':      ['fg', 'Normal'],
  \ 'bg':      ['bg', 'Normal'],
  \ 'hl':      ['fg', 'Comment'],
  \ 'fg+':     ['fg', 'CursorLine', 'CursorColumn', 'Normal'],
  \ 'bg+':     ['bg', 'CursorLine', 'CursorColumn'],
  \ 'hl+':     ['fg', 'Statement'],
  \ 'info':    ['fg', 'PreProc'],
  \ 'border':  ['fg', 'Ignore'],
  \ 'prompt':  ['fg', 'Conditional'],
  \ 'pointer': ['fg', 'Exception'],
  \ 'marker':  ['fg', 'Keyword'],
  \ 'spinner': ['fg', 'Label'],
  \ 'header':  ['fg', 'Comment'] }

"Get Files
command! -bang -nargs=? -complete=dir Files
    \ call fzf#vim#files(<q-args>, fzf#vim#with_preview({'options': ['--layout=reverse', '--info=inline']}), <bang>0)


" Get text in files with Rg
command! -bang -nargs=* Rg
  \ call fzf#vim#grep(
  \   'rg --column --line-number --no-heading --color=always --smart-case '.shellescape(<q-args>), 1,
  \   fzf#vim#with_preview(), <bang>0)

" Ripgrep advanced
function! RipgrepFzf(query, fullscreen)
  let command_fmt = 'rg --column --line-number --no-heading --color=always --smart-case %s || true'
  let initial_command = printf(command_fmt, shellescape(a:query))
  let reload_command = printf(command_fmt, '{q}')
  let spec = {'options': ['--phony', '--query', a:query, '--bind', 'change:reload:'.reload_command]}
  call fzf#vim#grep(initial_command, 1, fzf#vim#with_preview(spec), a:fullscreen)
endfunction

command! -nargs=* -bang RG call RipgrepFzf(<q-args>, <bang>0)

command! -bang -nargs=* GGrep
  \ call fzf#vim#grep(
  \   'git grep --line-number '.shellescape(<q-args>), 0,
  \   fzf#vim#with_preview({'dir': systemlist('git rev-parse --show-toplevel')[0]}), <bang>0)

" autoformat stuff
let g:formatters_python = ['isort', 'black']
noremap <F3> :Autoformat<CR>
let g:autoformat_verbosemode=1
" OR:
let verbose=1
