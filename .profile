# ~/.profile: executed by Bourne-compatible login shells.

if [ "$BASH" ]; then
  if [ -f ~/.bashrc ]; then
    . ~/.bashrc
  fi
fi

mesg n

##
# Your previous /Users/reed/.profile file was backed up as /Users/reed/.profile.macports-saved_2013-08-04_at_01:57:49
##

# MacPorts Installer addition on 2013-08-04_at_01:57:49: adding an appropriate PATH variable for use with MacPorts.
export PATH=/var/games:/usr/scripts:/opt/local/bin:/opt/local/sbin:$PATH
# Finished adapting your PATH environment variable for use with MacPorts.

