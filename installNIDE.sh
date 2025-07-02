#!/bin/bash
#Script prepares my custom NEOVIM distribution called NIDE

NVIM_PLUGIN_PATH='.config/nvim'

if [ ! -d "${HOME}/${NVIM_PLUGIN_PATH}" ] ; then
  mkdir -p "${HOME}/${NVIM_PLUGIN_PATH}"
  cp -r ./.config/nvim/* "${HOME}/${NVIM_PLUGIN_PATH}/"
else
  echo "${HOME}/${NVIM_PLUGIN_PATH} exist."
  echo "Please clean your current neovim environment before NIDE installation."
  exit 0
fi
