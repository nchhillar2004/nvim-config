# NeoVim Config
This is my own nvim config using [lazy.nvim](https://github.com/folke/lazy.nvim) and some selected plugins.

## Installation
Download [NeoVim](https://neovim.io/)
Then, run the following commands according to your operating system

### Linux
```bash
mkdir -p ~/.config/nvim
```

```bash
git clone https://github.com/nchhillar2004/nvim-config.git ~/.config/nvim
```
_NOTE: Use Linux for better plugins support_

### Windows
```shell
mkdir %appdata%\Local\nvim
```
```shell
git clone https://github.com/nchhillar2004/nvim-config.git %appdata%\Local\nvim
```
Run neovim using the ```nvim``` command in terminal. All the plugins will be installed automatically.

At last install LSP
```
:CocInstall coc-java coc-rust-analyzer coc-go coc-clangd coc-tsserver coc-pyright coc-r-lsp coc-lua coc-prettier coc-html coc-css coc-json coc-perl @yaegassy/coc-tailwindcss3
```

## Keymaps
- `vim.g.mapleader = " "`: Set mapleader to Space

- **Normal Mode Key Mappings**
  - `Space + t`: Open terminal
  - `Space + e`: Toggle NvimTree
  - `Space + n`: Open NvimTree in full screen
  - `Space + f`: Format the file (`gg=G`)
  - `Space + p`: Format with Prettier (for tsx/jsx files)
  - `Space + b`: Switch to the last buffer
  - `Space + pv`: Open Ex command line (`vim.cmd.Ex`)
  - `Space + ff`: Find files using Telescope
  - `Space + fg`: Live grep (search content inside files) with Telescope
  - `Space + fb`: Switch to a buffer using Telescope
  - `Space + s`: Split window vertically
  - `Space + 0`: Remove background color (`highlight Normal guibg=none`)
  - `Space + 1`: Set background to black (`highlight Normal guibg=#000000`)
  - `Space + 2`: Use `rose-pine-main` colorscheme
  - `Space + 3`: Use `sonokai` colorscheme
  - `Space + 4`: Use `catppuccin` colorscheme
  - `Space + 5`: Use default colorscheme

- **Move Lines (Normal Mode)**
  - `Alt + j`: Move current line down (`<cmd>m+1<CR>==`)
  - `Alt + k`: Move current line up (`<cmd>m-2<CR>==`)

- **Save and Copy/Paste**
  - `Ctrl + s`: Save file (`<cmd>w<CR>`)
  - `Ctrl + a`: Select all (`ggVG`)
  - `Ctrl + c`: Copy all to clipboard (`"+y`)
  - `Ctrl + v`: Paste from clipboard (`"+p`)

- **Terminal Mode Key Mappings**
  - `Esc`: Exit terminal mode
  - `Space + b`: Switch to the last buffer (`<C-\\><C-n>:b#<CR>`)

- **Navigation Mappings**
  - `gg`: Go to the top of the file
  - `G`: Go to the bottom of the file
  - `0`: Go to the beginning of the line
  - `^`: Go to the first non-blank character of the line
  - `$`: Go to the end of the line


## Troubleshooting
1. If icons are not visible, install Nerd font. recommended: [oh-my-posh](https://ohmyposh.dev/)
2. For code suggestions, ensure [Node.js](https://nodejs.org) is installed.