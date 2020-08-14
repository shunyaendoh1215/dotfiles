if g:dein#_cache_version !=# 150 || g:dein#_init_runtimepath !=# '/Users/shunya/.config/nvim,/etc/xdg/nvim,/Users/shunya/.local/share/nvim/site,/usr/local/share/nvim/site,/usr/share/nvim/site,/usr/local/Cellar/neovim/0.4.3/share/nvim/runtime,/usr/share/nvim/site/after,/usr/local/share/nvim/site/after,/Users/shunya/.local/share/nvim/site/after,/etc/xdg/nvim/after,/Users/shunya/.config/nvim/after,/Users/shunya/.cache/dein/repos/github.com/Shougo/dein.vim' | throw 'Cache loading error' | endif
let [plugins, ftplugin] = dein#load_cache_raw(['/Users/shunya/dotfiles/.config/nvim/init.vim', '/Users/shunya/.config/nvim/toml/dein.toml', '/Users/shunya/.config/nvim/toml/dein_lazy.toml'])
if empty(plugins) | throw 'Cache loading error' | endif
let g:dein#_plugins = plugins
let g:dein#_ftplugin = ftplugin
let g:dein#_base_path = '/Users/shunya/.config/nvim/dein'
let g:dein#_runtime_path = '/Users/shunya/.config/nvim/dein/.cache/init.vim/.dein'
let g:dein#_cache_path = '/Users/shunya/.config/nvim/dein/.cache/init.vim'
let &runtimepath = '/Users/shunya/.config/nvim,/etc/xdg/nvim,/Users/shunya/.local/share/nvim/site,/usr/local/share/nvim/site,/usr/share/nvim/site,/Users/shunya/.config/nvim/dein/repos/github.com/junegunn/fzf,/Users/shunya/.config/nvim/dein/repos/github.com/neoclide/coc.nvim,/Users/shunya/.config/nvim/dein/repos/github.com/Shougo/dein.vim,/Users/shunya/.config/nvim/dein/repos/github.com/phpactor/phpactor,/Users/shunya/.config/nvim/dein/.cache/init.vim/.dein,/usr/local/Cellar/neovim/0.4.3/share/nvim/runtime,/Users/shunya/.config/nvim/dein/.cache/init.vim/.dein/after,/usr/share/nvim/site/after,/usr/local/share/nvim/site/after,/Users/shunya/.local/share/nvim/site/after,/etc/xdg/nvim/after,/Users/shunya/.config/nvim/after,/Users/shunya/.cache/dein/repos/github.com/Shougo/dein.vim'
filetype off
  set background=dark
  au MyAutoCmd VimEnter * nested colorscheme nord
