# neovim-config
Easiest Neovim configurations on Windows: init.vim using [vim-plug](https://github.com/junegunn/vim-plug).

*NOTE: These are my personal choices; you don't have to like everything.*

**Steps to follow:**
1. Download [Neovim](https://neovim.io/)
2. Create a folder ```nvim``` inside ```%appdata%/Local/```
3. Paste the [init.vim]() file inside the ```nvim``` folder
4. Open the folder in terminal and enter ```nvim init.vim```
5. Run ```:PlugInstall```
6. Then run ```:CocInstall coc-python coc-tsserver coc-java coc-clangd coc-html coc-css coc-json``` *([Node.js](https://nodejs.org) is required for this step)*
7. Restart Neovim and enjoy :)

## Screenshots
#### rose-pine theme, coc suggestions, NERDTree, Terminal
![image](https://github.com/user-attachments/assets/23e16426-7586-479e-ba1b-5abab12d7c94)
#### Split screen, kanagawa-wave theme
![Screenshot 2024-09-20 185319](https://github.com/user-attachments/assets/b8e8c7b0-70ed-4d5b-a4e5-eeab0c809f0c)
#### Find files
![image](https://github.com/user-attachments/assets/8523e299-2657-4f96-bd8b-ef6c4f6b17e1)

## Commands
1. Open terminal: ```Space + t```
2. Open NERDTree: ```Space + n```
3. Focus NERDTree: ```Space + f```
4. Refresh NERDTree: ```Space + r```
5. Search File: ```Space + ff```
6. 7. Save file: ```Ctrl + s```
7. Changing ColorScheme:
   1. rost-pine: ```Space + 1``` *(default)*
   2. rose-pine-moon: ```Space + 2```
   3. kanagawa-wave: ```Space + 3```
   4. kanagawa-dragon: ```Space + 4```

## Troubleshooting
1. If icons are not visible, install Nerd font. I recommend: [oh-my-posh](https://ohmyposh.dev/)
2. For code suggestions, ensure [Node.js](https://nodejs.org) is installed. It's required for the coc plugin to work.
