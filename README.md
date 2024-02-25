# dotfiles
Self-use dot files for Hyprland.

## Config list
- vim
- kitty
- gBar
- fish
- rofi
- swww
- yazi

## Dependency install
```
sudo pacman -S vim vim-plug kitty fish fisher rofi swww yazi yay nodejs npm pulseaudio
yay -S gBar-git
```

## Installation
### Copy files from the repo
```
git clone https://github.com/immortalrover/dotfiles.git
cp -f ./dotfiles/.vimrc ~/.vimrc
```

You should choose one of the following two options.

##### for 2k monitor
```
cp -rf ./dotfiles/2k/.config/* ~/.config/
```

##### for 4k monitor
```
cp -rf ./dotfiles/4k/.config/* ~/.config/
```

### Configure vim
```
sudo npm -g install instant-markdown-d
vim ~/.vimrc
```
Use `:PlugInstall` to install plugs for vim.
Use `:CocInstall coc-json coc-tsserver` to install plugs for coc.nvim.

### Configure yazi
If you want to preview markdown files, run commands below.
```
sudo pacman -S go
git clone https://github.com/immortalrover/glow.git
cd glow
go build
sudo cp ./glow /usr/local/bin/
cd ~/.config/yazi/plugins/ 
rmdir ./glow.yazi
git clone https://github.com/Reledia/glow.yazi.git
```

### Configure gBar
```
vim ~/.config/gBar/config
```
