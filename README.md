## Neovim config

### Prerequisites:
- [Neovim](https://neovim.io/) (v0.10+): Ensure you have Neovim version 0.10 or higher
- [Node.js](https://nodejs.org/en) : Required for certains plugins (nvim-lspconfig)
- [oh-my-posh](https://ohmyposh.dev/) : Meslo font for icons

> **NOTE**: Using Linux is highly recommended for the best compatibility with all plugins.

### Setup

1. Clone the Repository

  - Linux:
```
git clone https://github.com/nchhillar2004/nvim-config.git ~/.config/nvim
```

  - Windows:
```
git clone https://github.com/nchhillar2004/nvim-config.git $env:APPDATA\nvim
```

2. Launch Neovim by typing `nvim` in the terminal. The installation window will appear, and plugins will be automatically installed.
3. To sync plugins while in the installation window press: `Shift + s` OR run `:LazySync` inside neovim
4. Restart neovim.

### Keymaps

- **Normal Mode Key Mappings**
  - `Space + e`: Toggle NvimTree
  - `Space + n`: Open NvimTree in full screen
  - `Space + f`: Format the file (`gg=G`)
  - `Space + p`: Format with Prettier (for tsx/jsx files)
  - `Space + b`: Switch to the last buffer
  - `Space + s`: Split window vertically
  - `Space + pv`: Open Ex command line (`vim.cmd.Ex`)
  - `Space + ff`: Find files using Telescope
  - `Space + fg`: Live grep (search content inside files) with Telescope
  - `Space + fb`: Switch to a buffer using Telescope
  - `Space + fh`: Search for Help tags
  - `Space + u`: Git undo tree
  - `Ctrl + P`: Search for Git Files

- **Colorschemes**
  - `Space + 0`: Remove background (`highlight Normal guibg=none`), *if using terminal bg image*
  - `Space + 1`: Set background to black (`highlight Normal guibg=#000000`)
  - `Space + 2`: `rose-pine-main` colorscheme
  - `Space + 3`: `gruvbox`
  - `Space + 4`: `ashen`
  - `Space + 5`: `github-theme`
  - `Space + 6`: `oxocarbon`
  - `Space + 7`: `lackluster`
  - `Space + 9`: `default`

- **Move Lines (Normal Mode)**
  - `Alt + j`: Move current line down (`<cmd>m+1<CR>==`)
  - `Alt + k`: Move current line up (`<cmd>m-2<CR>==`)

- **Move Multiple Lines (Visual Mode)**
  - `Shift + v + [Arrow keys, UP | DOWN]`: To select multiple lines.
  - `Shift + j`: Move current line down (`<cmd>m+1<CR>==`)
  - `Shift + k`: Move current line up (`<cmd>m-2<CR>==`)

- **Save and Copy/Paste**
  - `Ctrl + s`: Save file (`<cmd>w<CR>`)
  - `Ctrl + a`: Select all (`ggVG`)
  - `Ctrl + c`: Copy all to clipboard (`"+y`)
  - `Ctrl + v`: Paste from clipboard (`"+p`)

- **Navigation Mappings**
  - `gg`: Go to the top of the file
  - `G`: Go to the bottom of the file
  - `0`: Go to the beginning of the line
  - `^`: Go to the first non-blank character of the line
  - `$`: Go to the end of the line

### Screenshots
Telescope:
![telescope](https://github.com/user-attachments/assets/762bac90-51f5-48bd-8c63-c1a0ba0d77b8)

LPS + CMP:
![Screenshot_2025-02-27_11-00-21](https://github.com/user-attachments/assets/291b81f2-1528-4500-be9b-a6914ff04268)
![lsp](https://github.com/user-attachments/assets/d05db10b-4bef-495a-a81f-3d2aeed60313)

Colorschemes:
![screenrecording1-2025-02-27_10 38 07 (online-video-cutter com)](https://github.com/user-attachments/assets/0b37fc0f-6b15-4478-9455-501cbe88fcba)
