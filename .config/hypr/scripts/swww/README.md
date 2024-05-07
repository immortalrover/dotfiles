## A config of swww.
[swww](https://github.com/LGFae/swww) is an efficient animated wallpaper daemon for wayland, controlled at runtime, which means you can change wallpapers without even needing to restart. 

### Usage
Run the bash scripts in this folder.
- ['swwwInit.sh'](./swwwInit.sh) is used for start swww. It always use the first image in your wallpaper folder. Please add "exec-once=<path-to-swwwInit.sh>" in your hyprland.conf.
- ['swwwChange.sh'](./swwwChange.sh) is used for changing the current wallpaper to adjacent wallpapers. You can set a shoutcut key for it in your hyprland.conf.

### Configure
You can set the swww transitions style.
Please go to the [swww](../../../swww) config folder have a look.
