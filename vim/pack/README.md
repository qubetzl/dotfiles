# What is this?
This directory uses Vim's native mechanism for loading plugins.

# How does it work?

By default Vim scans `.vim/pack/*/start/` for plugins and proceeds to load them.
The plugins themselves define what to load when with their directory structure
For more information type `:help packages` in Vim.

# How do I use it?

I have two directories under `.vim/pack/`:
- `community/start/` - contains community maintained plugins as submodules
- `own/start` - my own 'plugin', which is a symlink to `vim.d` next to this directory.

Organizing my configuration similar to a 'plugin' allows the configuration to be fragmented into multiple files.
