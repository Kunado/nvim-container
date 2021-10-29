let $VIMRUNTIME="/usr/share/nvim/runtime"
set runtimepath+=/usr/share/nvim/runtime

set number
set autoindent
set tabstop=2
set shiftwidth=2
set expandtab
set splitright
set hls

if &compatible
  set nocompatible
endif

set runtimepath+=/dein/.cache/dein/repos/github.com/Shougo/dein.vim
if dein#load_state('/dein/.cache/dein')
  call dein#begin('/dein/.cache/dein')
  call dein#load_toml('/home/.config/nvim/dein.toml', {'lazy': 0})
  call dein#load_toml('/home/.config/nvim/dein_lazy.toml', {'lazy': 1})
  call dein#end()
  call dein#save_state()
endif

if dein#check_install()
    call dein#install()
endif

filetype plugin indent on
syntax enable
