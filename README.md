My basic dotfiles
=================

Feel free to use any of the files here to configure your own environment.

Credit goes to
--------------

* Ben Hoskings for https://github.com/benhoskings/dot-files
* Paul Annesley for https://github.com/pda/dotzsh and https://github.com/pda/babushka-deps/tree/master/tmux
* Sai Charan for https://github.com/scharan/Goodies
* Vim configuration from http://mislav.uniqpath.com/2011/12/vim-revisited/

SSH-Agent
---------

It's currently set up for OS X. You still need to run
```bash
    ssh-add -K 
```
To add the ssh key to the OS X keychain.

For Ubuntu, switch the code in use at ssh-agent-restore.zsh

For ssh sessions, disable the automatic ssh-key init, as it can cause problems with expected responses.
