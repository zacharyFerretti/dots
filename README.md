# Notes

Place for random (*ish*) dot-files. 

### tmux
To install and use the tmux config I've setup, check out the [Tmux Plugin Manager (TPM)](https://github.com/tmux-plugins/tpm). To install it you can do something like this:

```sh
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
```

Then you just have to modify the final line of the config to reflect that directory path for the TPM installation. So changing this:

```
run '/usr/share/tmux-plugin-manager/tpm'
```

To something like this:

```
run '~/.tmux/plugins/tpm/tpm'
```

*Note: This original config is referencing where AUR installs TPM on Arch.*

### zsh 
Lately, I've been using Starship as my `zsh` theme (*prompt*?). To install that you need to run this command, 

```sh 
brew install starship; # (MacOS)
pacman -S starship; # Arch
```

After that I like to run this command to set the theme to the gruvbox-rainbow preset, ([which you can read more about here](https://starship.rs/presets/gruvbox-rainbow)).

```sh 
starship preset gruvbox-rainbow -o ~/.config/starship.toml
```

There's a few assumptions about what is available on your system for this ZSH config. Specifically, they are:
1. **eza** - I always use `eza` on my systems ([repo here](https://github.com/eza-community/eza)), to install you just need to install it with your package manager of choice, for example on MacOS, run `brew install eza`.
2. **zoxide** - I always also use `zoxide` ([repo here](https://github.com/ajeetdsouza/zoxide)), to install you alos just install it with your package manager of choice. Then you install `fzf` (fuzzy-finder). This is just another package manager install, so just `brew install fzf` on MacOS. Then you can use my `.zshrc` config file and the Zoxide config setup will be done for you!

With both of those installed, `ls` and `cd` will be upgraded for the modern era and using them in your terminal will use `eza` and `zoxide` respectively. Enjoy!
