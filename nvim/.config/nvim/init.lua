require 'options'
require 'mappings'
require 'colors'
require 'plugins'

-- LuaLine
require('lualine').setup {
    options = {
        icons_enabled = false,
        theme = 'onedark'
    }
}

-- autopairs
require('nvim-autopairs').setup()
-- nvim_comment
require('nvim_comment').setup()
-- circles
require("circles").setup()  
-- project
require('project_nvim').setup()
-- neogit
require('neogit').setup()
-- nvim-tree
require('nvim-tree').setup()
