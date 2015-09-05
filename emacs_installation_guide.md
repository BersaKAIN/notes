# Emacs Installation Guide


## install the official distribution of emacs

### Installing emacs using brew
````
brew update
brew install emacs --with-cocoa

brew linkapps emacs
````

### Clean the default installation of emacs on mac
````
sudo rm /usr/bin/emacs
sudo rm -rf /usr/share/emacs
````

### Calling from the termimal
````
# adding the following to your shell config
alias emacs="/usr/local/Cellar/emacs/24.x/Emacs.app/Contents/MacOS/Emacs -nw"
````

### change the key mappings in iterms in OS X
[http://azaleasays.com/2013/07/05/setting-up-mac-os-x-and-iterm2-for-emacs/]

CAPSLOCK -> CTRL system wide
# in iterm2 use right option to map +ESC which is considered Meta by emacs.


Right Option -> +ESC
Swap Right Option and Right Command

## Install presets of emacs

There are several popular repo on github
- Spacemacs[https://github.com/syl20bnr/spacemacs]
- Prelude[https://github.com/bbatsov/prelude]
- Purcell's[https://github.com/purcell/emacs.d] 