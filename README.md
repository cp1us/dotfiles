# My (Arch) linux dotfiles
## Dotfiles are managed using chezmoi!
#### Installation:
  
Install chezmoi:
```bash
# For Arch Linux btw
sudo pacman -S chezmoi

# For any other distribution
sh -c "$(curl -fsLS get.chezmoi.io)"
```
  
Download and apply my dotfiles:
```bash
chezmoi init https://github.com/cp1us/dotfiles.git

#check changes
chezmoi diff

#apply changes
chezmoi apply -v
```
The script will automatically apply the appropriate dotfiles for the installed programs. If you have pre-installed any package, launch **chezmoi apply** again to apply its dotfiles from dot_config.
