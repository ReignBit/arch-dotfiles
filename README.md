# arch-dotfiles
My dotfiles and config files for my arch installation

# Dependencies
```
sudo pacman -S stow git
```

# How to use
```
cd ~
git clone https://github.com/reignbit/arch-dotfiles ./dotfiles
cd dotfiles
stow --adopt .
```

# How to add/remove
Create any dotfiles in this directory, and then use `stow .` to 'activate' them.
If using `stow --adopt`, make sure any changes have been commited before as this will overwrite files in this directory.
