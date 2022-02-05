local PKGS = {
	"savq/paq-nvim";
	"hoob3rt/lualine.nvim";
	"nvim-telescope/telescope.nvim";
	"nvim-lua/popup.nvim";
	"nvim-lua/plenary.nvim";
	"kyazdani42/nvim-tree.lua";
	"kyazdani42/nvim-web-devicons";
	"projekt0n/circles.nvim";
	"nvim-treesitter/nvim-treesitter";
	"ahmedkhalf/project.nvim";
	"TimUntersberger/neogit";
	"terrortylor/nvim-comment";
	"windwp/nvim-autopairs";
	"junegunn/rainbow_parentheses.vim";
	"Pocco81/TrueZen.nvim";
	"sainnhe/gruvbox-material";
	"arcticicestudio/nord-vim";
	"navarasu/onedark.nvim";
}

local function clone_paq()
	local path = vim.fn.stdpath('data') .. '/site/pack/paqs/start/paq-nvim'
	if vim.fn.empty(vim.fn.glob(path)) > 0 then
		vim.fn.system {
			'git',
			'clone',
			'--depth=1',
			'https://github.com/savq/paq-nvim.git',
			path
		}
	end
end

local function bootstrap_paq()
	clone_paq()
	-- Load Paq
	vim.cmd('packadd paq-nvim')
	local paq = require('paq')
	-- Exit nvim after installing plugins
	vim.cmd('autocmd User PaqDoneInstall quit')
	-- Read and install packages
	paq(PKGS)
	paq.install()
end

return { bootstrap_paq = bootstrap_paq }
