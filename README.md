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
