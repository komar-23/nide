#!/bin/bash
#Script prepares my custom VIM distribution

VIM_PACK_DIR='.vim/pack'

if [ ! -d "${HOME}/${VIM_PACK_DIR}/mine/opt" ] ; then
  mkdir -p "${HOME}/${VIM_PACK_DIR}/mine/opt"
else
  echo "${HOME}/${VIM_PACK_DIR}/mine/opt exist."
fi

if [ ! -d "${HOME}/${VIM_PACK_DIR}/mine/start" ] ; then
  mkdir -p "${HOME}/${VIM_PACK_DIR}/mine/start"
else
  echo "${HOME}/${VIM_PACK_DIR}/mine/start exist."
fi

if [ ! -d "${HOME}/${VIM_PACK_DIR}/vendor/opt" ] ; then
  mkdir -p "${HOME}/${VIM_PACK_DIR}/vendor/opt"
else
  echo "${HOME}/${VIM_PACK_DIR}/vendor/opt exist."
fi

if [ ! -d "${HOME}/${VIM_PACK_DIR}/vendor/start" ] ; then
  mkdir -p "${HOME}/${VIM_PACK_DIR}/vendor/start"
else
  echo "${HOME}/${VIM_PACK_DIR}/vendor/start exist."
fi

if [ ! -d "${HOME}/${VIM_PACK_DIR}/vendor/start/cleverf" ] ; then
  mkdir "${HOME}/${VIM_PACK_DIR}/vendor/start/cleverf"
  git clone https://github.com/rhysd/clever-f.vim.git "${HOME}/${VIM_PACK_DIR}/vendor/start/cleverf"
else
  echo "${HOME}/${VIM_PACK_DIR}/vendor/start/cleverf exist."
fi

if [ ! -d "${HOME}/${VIM_PACK_DIR}/vendor/start/commentary" ] ; then
  mkdir "${HOME}/${VIM_PACK_DIR}/vendor/start/commentary"
  git clone https://github.com/tpope/vim-commentary.git "${HOME}/${VIM_PACK_DIR}/vendor/start/commentary"
else
  echo "${HOME}/${VIM_PACK_DIR}/vendor/start/commentary exist."
fi

if [ ! -d "${HOME}/${VIM_PACK_DIR}/vendor/start/lastplace" ] ; then
  mkdir "${HOME}/${VIM_PACK_DIR}/vendor/start/lastplace"
  git clone https://github.com/farmergreg/vim-lastplace.git "${HOME}/${VIM_PACK_DIR}/vendor/start/lastplace"
else
  echo "${HOME}/${VIM_PACK_DIR}/vendor/start/lastplace exist."
fi

if [ ! -d "${HOME}/${VIM_PACK_DIR}/vendor/start/lightline" ] ; then
  mkdir "${HOME}/${VIM_PACK_DIR}/vendor/start/lightline"
  git clone https://github.com/itchyny/lightline.vim.git "${HOME}/${VIM_PACK_DIR}/vendor/start/lightline"
else
  echo "${HOME}/${VIM_PACK_DIR}/vendor/start/lightline exist."
fi

if [ ! -d "${HOME}/${VIM_PACK_DIR}/vendor/start/nerdtree" ] ; then
  mkdir "${HOME}/${VIM_PACK_DIR}/vendor/start/nerdtree"
  git clone https://github.com/preservim/nerdtree.git "${HOME}/${VIM_PACK_DIR}/vendor/start/nerdtree"
else
  echo "${HOME}/${VIM_PACK_DIR}/vendor/start/nerdtree exist."
fi

if [ ! -d "${HOME}/${VIM_PACK_DIR}/vendor/start/signature" ] ; then
  mkdir "${HOME}/${VIM_PACK_DIR}/vendor/start/signature"
  git clone https://github.com/kshenoy/vim-signature.git "${HOME}/${VIM_PACK_DIR}/vendor/start/signature"
else
  echo "${HOME}/${VIM_PACK_DIR}/vendor/start/signature exist."
fi

if [ ! -d "${HOME}/${VIM_PACK_DIR}/vendor/start/sort-motion" ] ; then
  mkdir "${HOME}/${VIM_PACK_DIR}/vendor/start/sort-motion"
  git clone https://github.com/christoomey/vim-sort-motion.git "${HOME}/${VIM_PACK_DIR}/vendor/start/sort-motion"
else
  echo "${HOME}/${VIM_PACK_DIR}/vendor/start/sort-motion exist."
fi

if [ ! -d "${HOME}/${VIM_PACK_DIR}/vendor/start/undotree" ] ; then
  mkdir "${HOME}/${VIM_PACK_DIR}/vendor/start/undotree"
  git clone https://github.com/mbbill/undotree.git "${HOME}/${VIM_PACK_DIR}/vendor/start/undotree"
else
  echo "${HOME}/${VIM_PACK_DIR}/vendor/start/undotree exist."
fi

if [ ! -d "${HOME}/${VIM_PACK_DIR}/vendor/start/vimwiki" ] ; then
  mkdir "${HOME}/${VIM_PACK_DIR}/vendor/start/vimwiki"
  git clone https://github.com/vimwiki/vimwiki.git "${HOME}/${VIM_PACK_DIR}/vendor/start/vimwiki"
else
  echo "${HOME}/${VIM_PACK_DIR}/vendor/start/vimwiki exist."
fi

if [ ! -d "${HOME}/${VIM_PACK_DIR}/vendor/start/surround" ] ; then
  mkdir "${HOME}/${VIM_PACK_DIR}/vendor/start/surround"
  git clone https://github.com/tpope/vim-surround.git "${HOME}/${VIM_PACK_DIR}/vendor/start/surround"
else
  echo "${HOME}/${VIM_PACK_DIR}/vendor/start/surround exist."
fi

if [ ! -d "${HOME}/${VIM_PACK_DIR}/vendor/start/traces" ] ; then
  mkdir "${HOME}/${VIM_PACK_DIR}/vendor/start/traces"
  git clone https://github.com/markonm/traces.vim.git "${HOME}/${VIM_PACK_DIR}/vendor/start/traces"
else
  echo "${HOME}/${VIM_PACK_DIR}/vendor/start/traces exist."
fi

if [ ! -d "${HOME}/${VIM_PACK_DIR}/vendor/start/gruvbox" ] ; then
  mkdir "${HOME}/${VIM_PACK_DIR}/vendor/start/gruvbox"
  git clone https://github.com/morhetz/gruvbox.git "${HOME}/${VIM_PACK_DIR}/vendor/start/gruvbox"
else
  echo "${HOME}/${VIM_PACK_DIR}/vendor/start/gruvbox exist."
fi

if [ ! -d "${HOME}/${VIM_PACK_DIR}/vendor/start/vim-tmux-navigator" ] ; then
  mkdir "${HOME}/${VIM_PACK_DIR}/vendor/start/vim-tmux-navigator"
  git clone git@github.com:christoomey/vim-tmux-navigator.git "${HOME}/${VIM_PACK_DIR}/vendor/start/vim-tmux-navigator"
else
  echo "${HOME}/${VIM_PACK_DIR}/vendor/start/vim-tmux-navigator exist."
fi

if [ ! -d "${HOME}/${VIM_PACK_DIR}/vendor/start/bufferline" ] ; then
  mkdir "${HOME}/${VIM_PACK_DIR}/vendor/start/bufferline"
  git clone https://github.com/bling/vim-bufferline.git "${HOME}/${VIM_PACK_DIR}/vendor/start/bufferline"
else
  echo "${HOME}/${VIM_PACK_DIR}/vendor/start/bufferline exist."
fi

if [ ! -f "${HOME}/.vimrc" ] ; then
  cp ./.vimrc ${HOME}/.vimrc
else
  echo '.vimrc file exist, backup has been created as a .vimrc.bkp file'
  cp ${HOME}/.vimrc ${HOME}/.vimrc.bkp
  cp ./.vimrc ${HOME}/.vimrc
fi
