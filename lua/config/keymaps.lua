-- set mapleader, i.e SPACE (' ')
vim.g.mapleader = " "
local opts = { noremap = true, silent = true }

vim.keymap.set('n', '<leader>t', ':terminal<CR>', opts) -- opens terminal
vim.keymap.set('n', '<leader>e', ':NvimTreeToggle<CR>', opts) -- toggle Nvimtree
vim.keymap.set('n', '<leader>n', ':NvimTreeOpen<CR>:wincmd o<CR>', opts) -- Open NvimTree in full screen
vim.keymap.set('n', '<leader>f', ':normal! gg=G<CR>', opts) -- format file
vim.keymap.set('n', '<leader>p', ':Prettier<CR>', opts) -- provied better formatting for tsx & jsx files
vim.keymap.set('n', '<leader>b', ':b#<CR>', opts) -- switch to last buffer

vim.keymap.set('t', '<Esc>', '<C-\\><C-n>')
vim.keymap.set('t', '<leader>b', '<C-\\><C-n>:b#<CR>', opts) -- switch to last buffer in terminal mode

vim.keymap.set('i', '<CR>', 'coc#pum#visible() ? coc#pum#confirm() : "<CR>"', { expr = true, silent = true })

vim.keymap.set('n', '<leader>pv', vim.cmd.Ex)  
vim.keymap.set('n', '<leader>ff', require('telescope.builtin').find_files, { desc = 'Telescope find files' }) -- find files
vim.keymap.set('n', '<leader>fg', require('telescope.builtin').live_grep, { desc = 'Telescope live grep' }) -- search content inside files
vim.keymap.set('n', '<leader>fb', require('telescope.builtin').buffers, { desc = 'Telescope buffers' }) -- find from buffers
vim.keymap.set('n', '<leader>s', '<cmd>vsplit<CR>') -- vertical split

-- themes
vim.keymap.set('n', '<leader>0', '<cmd>highlight Normal guibg=none<CR>')
vim.keymap.set('n', '<leader>1', '<cmd>highlight Normal guibg=#000000<CR>')
vim.keymap.set('n', '<leader>2', '<cmd>colorscheme rose-pine-main<CR>')
vim.keymap.set('n', '<leader>3', '<cmd>colorscheme kanagawa-dragon<CR>')
vim.keymap.set('n', '<leader>4', '<cmd>colorscheme monokai<CR>')
vim.keymap.set('n', '<leader>5', '<cmd>colorscheme default<CR>')

-- move line UP/ DOWN in Visual mode
vim.keymap.set('v', "J", ":m '>+1<CR>gv=gv") -- shift + j, move current line up
vim.keymap.set('v', "K", ":m '<-2<CR>gv=gv") -- shift + k

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

