dotfiles
========

My unix dotfiles so I can put them all in a central place. You will want to also use this in conjunction with [rweichler/usrbin](http://github.com/rweichler/usrbin).

## How to install

    git clone https://github.com/rweichler/dotfiles.git
    cd dotfiles
    chmod +x runme
    ./runme $HOME
    cd ..
    rm -rf dotfiles

This script will copy everything in dotfiles but the .git and README.md to whatever dir you specify.
