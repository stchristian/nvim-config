# Neovim configuration

Main configuration goes inside init.vim

Prerequisites: 
- Node
- yarn package manager (vim-prettier).
- python3 and pynvim (for ultisnips)
- [fd][https://github.com/sharkdp/fd] required by FZF to list files

## Other plugings

Project uses the [vim-devicons](https://github.com/ryanoasis/vim-devicons) plugin so you need to install a [nerd font](https://github.com/ryanoasis/nerd-fonts#font-patcher) on your system.

## FZF

[FZF](https://github.com/junegunn/fzf.vim) is used as a file finder. Add stdpath('data')/plugged/fzf/bin to your PATH variable to use it as a cmd line tool outside vim. 


## Colors
Color schemes goes into the _colors/_ directory

## Fonts

Install the nerd font (a nerd font includes special symbols extending the base font) from the _fonts/_ directory. The gui version of vim will set it (see _ginit.vim_). If you use terminal you should configure the settings of your terminal to use that font.
