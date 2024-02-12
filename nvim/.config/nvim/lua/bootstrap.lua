local function clone_paq()
  local path = vim.fn.stdpath("data") .. "/site/pack/paqs/start/paq-nvim"
  local is_installed = vim.fn.empty(vim.fn.glob(path)) == 0
  if not is_installed then
    vim.fn.system { "git", "clone", "--depth=1", "https://github.com/savq/paq-nvim.git", path }
    return true
  end
end

local function bootstrap_paq(packages)
  local first_install = clone_paq()
  vim.cmd.packadd("paq-nvim")
  local paq = require("paq")
  if first_install then
    vim.notify("Installing plugins... If prompted, hit Enter to continue.")
  end

  -- Read and install packages
  paq(packages)
  paq.install()
end

local function headless_paq()
  -- Set to exit nvim after installing plugins
  vim.cmd("autocmd User PaqDoneInstall quit")
  bootstrap_paq {
    "savq/paq-nvim",
    -- List your packages
    "sainnhe/gruvbox-material",
    "sainnhe/everforest";
    "shaunsingh/nord.nvim",
    "hoob3rt/lualine.nvim",
    "nvim-telescope/telescope.nvim",
    "nvim-lua/popup.nvim",
    "nvim-lua/plenary.nvim",
    "nvim-treesitter/nvim-treesitter",
    "ahmedkhalf/project.nvim",
    "TimUntersberger/neogit",
    "terrortylor/nvim-comment",
    "kylechui/nvim-surround",
    "windwp/nvim-autopairs",
    "junegunn/rainbow_parentheses.vim",
    "Pocco81/TrueZen.nvim",
  }
end

return {
  headless_paq = headless_paq,
}
