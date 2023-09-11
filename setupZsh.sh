#!/bin/bash
sudo pacman -S zsh
chsh -s /bin/zsh
mkdir -p ~/.config
mkdir -p ~/.zsh
cp ../.config/starship.toml ~/.config/
cp ../.zsh/* ~/.zsh
cp ../.zshrc ~/
mkdir -p ~/.zsh/zsh-autosuggestions
mkdir -p ~/.zsh/zsh-syntax-highlighting
git clone https://github.com/zsh-users/zsh-autosuggestions ~/.zsh/zsh-autosuggestions
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ~/.zsh/zsh-syntax-highlighting
mkdir -p ~/Downloads/nerd-fonts
git clone --filter=blob:none --sparse https://github.com/ryanoasis/nerd-fonts.git ~/Downloads/nerd-fonts
cd ~/Downloads/nerd-fonts && git sparse-checkout add patched-fonts/Meslo
sh ~/Downloads/nerd-fonts/install.sh Meslo
curl -sS https://starship.rs/install.sh | sh
