-- General vim options
-- Abbreviations
local cmd = vim.cmd
local g   = vim.g
local opt = vim.opt

-- Global options
opt.termguicolors = true
opt.hidden = true
opt.swapfile = false
opt.clipboard = "unnamed"
opt.expandtab = true
opt.shiftwidth = 4
opt.smartindent = true
opt.splitbelow = true
opt.splitright = true
opt.hlsearch = false
opt.cursorline = true
opt.number = true
opt.relativenumber = true
opt.colorcolumn = "80"
opt.scrolloff = 1
opt.linebreak = true

g.mapleader = ' ' 

-- Disable vim plugins
local disabled_built_ins = {
    "netrw",
    "netrwPlugin",
    "netrwSettings",
    "netrwFileHandlers",
    "gzip",
    "zip",
    "zipPlugin",
    "tar",
    "tarPlugin",
    "getscript",
    "getscriptPlugin",
    "vimball",
    "vimballPlugin",
    "2html_plugin",
    "logipat",
    "rrhelper",
    "matchit"
}

for _, plugin in pairs(disabled_built_ins) do
	g["loaded_" .. plugin] = 1
end

cmd [[ au TermOpen term://* setlocal nonumber laststatus=0 ]]

-- where is this supposed to go?
g.update_cwd = 1
g.nvim_tree_respect_buf_cwd = 1

