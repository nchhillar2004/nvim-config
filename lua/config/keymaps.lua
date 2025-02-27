local opts = { noremap = true, silent = true }
vim.keymap.set('n', '<leader>pv', vim.cmd.Ex)
vim.keymap.set('n', '<leader>f', ':normal! gg=G<CR>', opts)
vim.keymap.set('n', '<leader>s', '<cmd>vsplit<CR>') -- vertical split
vim.keymap.set('n', '<leader>c', '<cmd>highlight CursorLine ctermbg=235 guibg=#2e2e2e<CR>') -- change color of cursorline

vim.keymap.set('n', '<C-s>', '<cmd>w<CR>') -- save file, write
vim.keymap.set('n', '<C-a>', 'ggVG', opts) -- select all
vim.keymap.set('n', '<C-c>', '"+y', opts) -- copy all
vim.keymap.set('v', '<C-c>', '"+y', opts)
vim.keymap.set('n', '<C-v>', '"+p', opts)
vim.keymap.set('v', '<C-v>', '"+p', opts) -- paste
vim.keymap.set('n', '<C-/>', ':s/^/--/<CR>', opts)

-- move line UP/ DOWN in normal mode
vim.keymap.set('n', '<A-j>', '<cmd>m+1<CR>==') -- alt + j
vim.keymap.set('n', '<A-k>', '<cmd>m-2<CR>==') -- alt + k

-- move line UP/ DOWN in Visual mode
vim.keymap.set('v', "J", ":m '>+1<CR>gv=gv") -- shift + j, move current line up
vim.keymap.set('v', "K", ":m '<-2<CR>gv=gv") -- shift + k

vim.keymap.set('n', '<leader>e', ':NvimTreeToggle<CR>', opts) -- toggle Nvimtree
vim.keymap.set('n', '<leader>n', ':NvimTreeOpen<CR>:wincmd o<CR>', opts) -- Open NvimTree in full screen
vim.keymap.set('n', '<leader>p', ':Prettier<CR>', opts) -- provied better formatting for tsx & jsx files

vim.keymap.set("n", "<leader>u", vim.cmd.UndotreeToggle, opts)

local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>ff', builtin.find_files, { desc = 'Telescope find files' }) -- find files
vim.keymap.set('n', '<leader>fg', builtin.live_grep, { desc = 'Telescope live grep' }) -- search content inside files
vim.keymap.set('n', '<leader>fb', builtin.buffers, { desc = 'Telescope buffers' }) -- find from buffers
vim.keymap.set('n', '<leader>fh', builtin.help_tags, { desc = 'Help tags' })
vim.keymap.set('n', '<C-p>', builtin.git_files, { desc = 'Git files' })

vim.keymap.set('n', '<leader>0', '<cmd>highlight Normal guibg=none<CR>')
vim.keymap.set('n', '<leader>1', function()
    vim.cmd('highlight Normal guibg=#000')
    vim.cmd('highlight NormalNC guibg=#000')
end)
local SetThemeWithConfig = function(theme)
    vim.cmd('colorscheme ' .. theme)
    vim.cmd('highlight CursorLine ctermbg=225 guibg=#2e2e2e')
end
vim.keymap.set('n', '<leader>2', '<cmd>colorscheme rose-pine-main<CR>')
vim.keymap.set('n', '<leader>3', '<cmd>colorscheme retrobox<CR>')
vim.keymap.set('n', '<leader>4', '<cmd>colorscheme ashen<CR>')
vim.keymap.set('n', '<leader>5', function() SetThemeWithConfig('vim') end)
vim.keymap.set('n', '<leader>6', function() SetThemeWithConfig('industry') end)
vim.keymap.set('n', '<leader>7', function() SetThemeWithConfig('elflord') end)
vim.keymap.set('n', '<leader>8', '<cmd>colorscheme delek<CR>')
vim.keymap.set('n', '<leader>9', '<cmd>colorscheme default<CR>')
