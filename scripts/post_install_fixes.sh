#!/bin/bash

echo -e "Create link for askpass program, such that VSCode (and possibly others) can find it" 
sudo ln -is /usr/bin/ksshaskpass /usr/lib/ssh/ssh-askpass

echo -e "Installing JetBrainsMono font with ligature support"
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/JetBrains/JetBrainsMono/master/install_manual.sh)"

systemctl enable paccache.timer

