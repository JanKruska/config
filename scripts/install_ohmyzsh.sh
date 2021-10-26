#!/bin/bash

sh -c "$(wget -O- https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

cd "${HOME}/.oh-my-zsh/custom/plugins" || exit

git clone https://github.com/zsh-users/zsh-syntax-highlighting.git
git clone https://github.com/zsh-users/zsh-autosuggestions.git
git clone --depth 1 -- https://github.com/marlonrichert/zsh-autocomplete.git

echo -e "\nAgnoster theme might need additional Powerline font to render correctly in some programs"
cd /tmp || exit
git clone https://github.com/abertsch/Menlo-for-Powerline.git
cd Menlo-for-Powerline || exit
sudo cp Menlo*.ttf /usr/share/fonts
