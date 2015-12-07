# Emacs Installation Guide
This guide is used to reproduce my installation of emacs and all it's configurations. It is supposed to work on `OS X 10.10`. 

The idea of the repo is to easily install emacs on any new machine including remote terminals.

## Install the official distribution of emacs
First we need to install the official version of emacs. The latest right now is 24.5 and I am assuming 24.5+ for all the packages to work.

### Installing emacs using brew
````
brew update
brew tap railwaycat/emacsmacport
brew install emacs-mac

# make the app to show up in application folder
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

### Change the key mappings in iterms in OS X
Changes are based on this [tutorial](http://azaleasays.com/2013/07/05/setting-up-mac-os-x-and-iterm2-for-emacs/)

- CAPSLOCK -> CTRL system wide
- In iterm2 use right option to map +ESC which is considered Meta by emacs.
- Right Option -> +ESC
- Swap Right Option and Right Command

## Install presets of emacs

There are several popular repo on github
- [Spacemacs](https://github.com/syl20bnr/spacemacs)
- [Prelude](https://github.com/bbatsov/prelude)
- [Purcell's](https://github.com/purcell/emacs.d)



## Spacemacs

After some thought, my first try of the presets of emacs is the spacemacs. Its idea of using `SPC` to replace `M-x` is smart and it seems to be the most starred and frequenctly updated one. Also, its architecture of layered configuration is ideal for personal customization and easy update.

### Powerline Issue on Terminal Usage

Powerline is a status bar plugin from vim. In spacemacs we also use it to configure the status bar. However, for the terminal users, the fonts are not properly set by default. So we need to install the patched fonts. 

````
git clone git@github.com:powerline/fonts.git
# cd into the repo
./install.sh
````

After installing the powerline fonts, you will need to config the terminal to use the font. For iterm2, it's `preference -> profile -> text -> regular and non ASCII font`

To update spacemacs:
````
git pull --rebase; git submodule sync; git submodule update
````

### Personal Layer
You can create your personal layer by `M-x configuration-layer/create-layer`

My personal layer resides in this [repo](https://github.com/BersaKAIN/dotfiles)
So to install the layey into `spacemacs`:
````
cd ~
git clone https://github.com/BersaKAIN/dotfiles
# then link the the directory BersaKAIN to your private folder
ln -s BersaKAIN ~/.emacs.d/private/BersaKAIN
# include your layer in .spacemacs file. Append <layer-name> in your dotspacemacs-configuration-layers variable
````

### Auto-Complete
#### Installation
[https://github.com/syl20bnr/spacemacs/tree/master/layers/auto-completion]

I will use `company-mode` for auto completion.
Some of the nice features from other IDEs:
- suggest even after the dot.
- show function argument and return type
- xcode like interface of function snippets
- documentation and code lookup 

I am actually not sure how vim and emacs should serve as text editor, many of the new ones are providing easier setup and comparable functions. The only advantage of it maybe that we can customize it to whatever we want without having to wait for another release and it's totally free.