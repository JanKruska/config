#!/bin/bash

echo -e "Create link for askpass program, such that VSCode (and possibly others) can find it" 
sudo ln -is /usr/bin/ksshaskpass /usr/lib/ssh/ssh-askpass
