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

This is a daemon that allows you to forward a port from your iOS device to the computer using the USB port. For example the configuration I have forwards port 22 on the iPhone to port 2222 on the computer so I can SSH into it. Very useful when needing to commit code on the fly or to browse the web (only can use lynx in the shell unfortunately, but it gets the job done).

### .gitconfig

Just changes the colors, and adds the alias ls=status.

### .bashrc

A couple of nifty features including colored ls, [jump/mark](http://jeroenjanssens.com/2013/08/16/quickly-navigate-your-filesystem-from-the-command-line.html), lsg (git ls, so I can do clear;lsg quickly).

And other stuff I forgot

### .screenrc

Actually makes it usable.

### .vimrc

Adds line numbers, current working directory to bottom, mouse support mostly. And some aliases for quicker web dev.

### .ssh

Adds a config so I can do "ssh iphone" to emulate "ssh 127.0.0.1 -p 2222" (used in conjunction with usbmuxd)

========

That's about it! I don't know why I'm explaining everything, since I'm going to be the only one using this, but I guess if I develop alzheimer's then I suppose this will be useful.
