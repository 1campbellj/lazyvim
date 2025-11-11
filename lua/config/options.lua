-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here

vim.opt.number = true
vim.opt.relativenumber = false

vim.g.lazyvim_picker = "telescope"

vim.g.mapleader = ","
vim.g.maplocalleader = ","

vim.opt.numberwidth = 3
vim.opt.signcolumn = "yes:1"
vim.opt.statuscolumn = "%l%s"

vim.g.termguicolors = true
vim.g.syntax = on

vim.opt.wrap = true
vim.opt.linebreak = true -- Don't break words when wrapping
vim.opt.breakindent = true -- Maintain indentation for wrapped lines
vim.opt.showbreak = "↪ " -- Visual indicator for wrapped lines
vim.opt.breakindentopt = "shift:2" -- Add extra indent to wrapped lines

vim.o.autoread = true
