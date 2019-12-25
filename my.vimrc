" prefer shorter tabs
set tabstop=2
set shiftwidth=2

" display current file being edited
set laststatus=2

set statusline+=%f

" better :vsp and :sp
set splitbelow
set splitright

autocmd FileType js setlocal tabstop=2|setlocal shiftwidth=2

" this gives visual wrapping
set wrap

" this prevents auto line breaks
set textwidth=0 wrapmargin=0

" this will allow for formatted paste into the editor
set paste

" this will default the text editor to show line numbers, you can remove them with this command (:set nonu)
set nu

" this will display the whitespace characters and end of lines
set list
set listchars=tab:>-,trail:~,extends:>,precedes:<

" :W sudo saves the file
" (useful for handling the permission-denied error)
command W w !sudo tee % > /dev/null

"Always show current position
set ruler

" Configure backspace so it acts as it should act
set backspace=eol,start,indent
set whichwrap+=<,>,h,l

" Ignore case when searching
set ignorecase

" When searching try to be smart about cases
set smartcase

" Highlight search results
set hlsearch

syntax enable

try
    colorscheme desert
catch
endtry

set background=dark

set expandtab

