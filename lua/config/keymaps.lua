local opts = { noremap = true, silent = true }
vim.keymap.set('n', '<leader>pv', vim.cmd.Ex)
vim.keymap.set('n', '<leader>f', ':normal! gg=G<CR>', opts)
vim.keymap.set('n', '<leader>s', '<cmd>vsplit<CR>') -- vertical split
vim.keymap.set('n', '<leader>c', '<cmd>highlight CursorLine ctermbg=235 guibg=#121212<CR>') -- change color of cursorline

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

vim.keymap.set('n', '<leader>ff', function()
    require('telescope.builtin').find_files()
end, { desc = 'Telescope find files' })

vim.keymap.set('n', '<leader>fg', function()
    require('telescope.builtin').live_grep()
end, { desc = 'Telescope live grep' })

vim.keymap.set('n', '<leader>fb', function()
    require('telescope.builtin').buffers()
end, { desc = 'Telescope buffers' })

vim.keymap.set('n', '<leader>fh', function()
    require('telescope.builtin').help_tags()
end, { desc = 'Help tags' })

vim.keymap.set('n', '<C-p>', function()
    require('telescope.builtin').git_files()
end, { desc = 'Git files' })
local cmp = require("cmp")

local cmp_enabled = true

cmp.setup({
    enabled = function()
        return cmp_enabled
    end,
})
vim.keymap.set("n", "<leader>cp", function()
    cmp_enabled = not cmp_enabled
    if cmp_enabled then
        vim.notify("CMP enabled")
    else
        vim.notify("CMP disabled")
    end
end, { desc = "Toggle completion" })

vim.keymap.set('n', '<leader>0', '<cmd>highlight Normal guibg=none<CR>')
vim.keymap.set('n', '<leader>1', function()
    vim.cmd('highlight Normal guibg=#000')
    vim.cmd('highlight NormalNC guibg=#000')
end)
vim.keymap.set('n', '<leader>2', '<cmd>colorscheme rose-pine-main<CR>')
vim.keymap.set('n', '<leader>3', '<cmd>colorscheme gruvbox<CR>')
vim.keymap.set('n', '<leader>4', '<cmd>colorscheme gruber-darker<CR>')
vim.keymap.set('n', '<leader>5', '<cmd>colorscheme lackluster-hack<CR>')
vim.keymap.set('n', '<leader>9', '<cmd>colorscheme default<CR>')
