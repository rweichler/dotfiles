dotfiles
========

My unix dotfiles so I can put them all in a central place.

# How to install

```Batchfile
git clone https://github.com/rweichler/dotfiles.git
cd dotfiles
chmod +x runme
./runme $HOME
cd ..
rm -rf dotfiles
```

This script will copy everything in dotfiles but the usbmuxd, .git and README.md to whatever dir you specify.

Put usbmuxd and usbmuxd-1.0.8 in somewhere like /usr/bin/

========

## My configurations explained

### usbmuxd

IPHONE SSH OVER USB WOOOOOOOoOoooooOOOOO

if you're on linux, just install usbmuxd and iproxy using a package manager... run submuxd as root and run iproxy as regular n shit breh yeeeeeeeeeee

### .gitconfig

* Changes the colors
* alias ls=status
* ~/.gitignore_global

### .bashrc

* colored LS
* [jump/mark](http://jeroenjanssens.com/2013/08/16/quickly-navigate-your-filesystem-from-the-command-line.html)
* alias lsg="git ls" (so I can do clear;lsg quickly)
* gap MESSAGE BRANCH = git commit -a -m MESSAGE && git push origin BRANCH
* gap MESSAGE = gap MESSAGE master

And other stuff I forgot

### .screenrc

Actually makes it usable.

### .vimrc

* line numbers, current working directory to bottom, mouse support
* some aliases for quicker web dev
* :Hex toggles hex editing mode

### .ssh

Adds a config so I can do "ssh iphone" to emulate "ssh 127.0.0.1 -p 2222" (used in conjunction with usbmuxd)

========

That's about it! I don't know why I'm explaining everything, since I'm going to be the only one using this, but I guess if I develop alzheimer's then I suppose this will be useful.
