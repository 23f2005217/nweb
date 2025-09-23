-- Options are automatically loaded before lazy.nvim start up
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here

vim.opt.relativenumber = false
vim.g.root_spec = { "cwd" }
vim.g.python3_host_prog = vim.fn.expand("~/.virtualenvs/neovim/bin/python3")
