set number
set mouse=a
set autoindent
set tabstop=4
set shiftwidth=4
set smarttab
set softtabstop=4
set guicursor=
nnoremap K :m .-2<CR>==
nnoremap J :m .+1<CR>==
vnoremap K :m '<-2<CR>gv=gv
vnoremap J :m '>+1<CR>gv=gv
