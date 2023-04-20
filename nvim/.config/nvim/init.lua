require 'options'
require 'mappings'
require 'colors'
require 'plugins'

-- Plugins configuration
require('lualine').setup {
    options = {
        icons_enabled = false,
        theme = 'gruvbox-material'
    }
}
require('nvim-autopairs').setup()
require('nvim-surround').setup()
require('nvim_comment').setup()
require('project_nvim').setup()
require('neogit').setup()
