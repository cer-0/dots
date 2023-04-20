-- Mappings

-- Shorten vim.api.nvim_set_keymap
local function map(mode, lhs, rhs, opts)
	local options = {noremap = true}
	if opts then options  = vim.tbl_extend('force', options, opts) end
	vim.api.nvim_set_keymap(mode, lhs, rhs, options)
end

-- General file management
map('n', '<leader>fs', ':update<CR>')
map('n', '<leader>w', ':update<CR>')
map('n', '<leader>q', ':quit!<CR>')
map('n', '<leader>x', ':wqall<CR>')

-- Movement between buffers
map('n', '<C-h>', '<C-w>h')
map('n', '<C-j>', '<C-w>j')
map('n', '<C-k>', '<C-w>k')
map('n', '<C-l>', '<C-w>l')

-- Move line pressing up and down
map('n', '<Up>',   ':move-2<CR>', { silent = true })
map('n', '<Down>', ':move+<CR>',  { silent = true })

-- Vim movement in insert mode
map('i', '<C-h>', '<C-o>h')
map('i', '<C-j>', '<C-o>j')
map('i', '<C-k>', '<C-o>k')
map('i', '<C-l>', '<C-o>l')

-- Quick edit/source to vimrc
map('n', '<leader>ev', ':edit $MYVIMRC<CR>')
map('n', '<leader>sv', ':source $MYVIMRC<CR>')

-- Enable/disable spell checking 
map('n', '<leader>oe', ':setlocal spell spelllang=es_mx<CR>')
map('n', '<leader>ou', ':setlocal spell spelllang=en_us<CR>')
map('n', '<leader>oo', ':set nospell<CR>')

-- Terminal mappings
map('n', '<leader>t', ':10new +terminal | setlocal nobuflisted<CR>i')
map('n', '<leader>T', ':vnew +terminal | setlocal nobuflisted<CR>i')
map('t', '<leader>q', 'i<C-d><C-\\><C-n>:quit!<CR>')
map('t', '<Esc>', '<C-\\><C-n>') -- Esc exits terminal mode
map('t', '<C-h>', '<C-\\><C-N><C-w>h') -- Move between buffers in terminal mode
map('t', '<C-j>', '<C-\\><C-N><C-w>j')
map('t', '<C-k>', '<C-\\><C-N><C-w>k')
map('t', '<C-l>', '<C-\\><C-N><C-w>l')

-- Plugin mappings
-- Telescope
map('n', '<leader>ff', ':lua require("telescope.builtin").find_files({hidden=true})<CR>')
map('n', '<leader>fg', ':lua require("telescope.builtin").live_grep()<CR>')
map('n', '<leader>fb', ':lua require("telescope.builtin").buffers()<CR>')
map('n', '<leader>fh', ':lua require("telescope.builtin").help_tags()<CR>')
map('n', '<leader>ss', ':lua require("telescope.builtin").spell_suggest()<CR>')

-- TrueZen
map('n', '<leader>tz', '<cmd>TZAtaraxis<CR>')
map('n', '<leader>tm', '<cmd>TZMinimalist<CR>')
map('n', '<leader>tZ', '<cmd>TZFocus<CR>')

-- Neogit
map('n', '<leader>gg', '<cmd>Neogit<CR>')
