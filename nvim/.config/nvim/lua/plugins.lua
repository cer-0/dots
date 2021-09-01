vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function()
    use 'wbthomason/packer.nvim'
    use 'folke/tokyonight.nvim'
    use {
        'hoob3rt/lualine.nvim',
        requires = {'kyazdani42/nvim-web-devicons', opt = true}
    }
    use {
        'kyazdani42/nvim-tree.lua',
        requires = {'kyazdani42/nvim-web-devicons', opt = true}
    }
    use {
        "projekt0n/circles.nvim",
        requires = {
            {"kyazdani42/nvim-web-devicons"},
            {"kyazdani42/nvim-tree.lua", opt = true}
        }
    }
    use {
        'nvim-treesitter/nvim-treesitter',
        branch = '0.5-compat',
        run = ':TSUpdate'
    }
    use {
        'nvim-telescope/telescope.nvim',
        requires = {{'nvim-lua/popup.nvim'}, {'nvim-lua/plenary.nvim'}}
    }
    use "ahmedkhalf/project.nvim" 
    use { 'TimUntersberger/neogit', requires = 'nvim-lua/plenary.nvim' }
    -- use {
    --     "ahmedkhalf/project.nvim",
    --     config = function()
    --         require("project_nvim").setup {}
    --     end
    -- }
    use 'terrortylor/nvim-comment'
    use 'windwp/nvim-autopairs'
    use {
        'junegunn/rainbow_parentheses.vim',
        ft = { 'lisp', 'scm' } -- ??
    }
    use {
        'Pocco81/TrueZen.nvim',
        opt = true,
        cmd = {'TZAtaraxis', 'TZMinimalist', 'TZFocus'}
    }
end)
