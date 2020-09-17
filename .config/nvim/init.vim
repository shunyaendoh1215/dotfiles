" reset augroup
augroup MyAutoCmd
autocmd!
augroup END

" dein script
if &compatible
  set nocompatible
endif
set runtimepath+=/Users/shunya/.cache/dein/repos/github.com/Shougo/dein.vim
let s:dein_dir = expand('~/.config/nvim/dein')
let s:toml_dir = expand('~/.config/nvim/toml')
if dein#load_state(s:dein_dir)
  call dein#begin(s:dein_dir)
  call dein#recache_runtimepath()
  " Load TOML
  let s:toml = s:toml_dir . '/dein.toml'
  let s:lazy_toml = s:toml_dir . '/dein_lazy.toml'
  " 通常ロード
  call dein#load_toml(s:toml, {'lazy': 0})
  " 遅延ロード
  call dein#load_toml(s:lazy_toml, {'lazy': 1})
  call dein#end()
  call dein#save_state()
endif
if has('vim_starting') && dein#check_install()
  call dein#install()
endif
" /dein script

filetype plugin indent on

syntax enable
set t_Co=256


au ColorScheme * hi Normal ctermbg=none
au ColorScheme * hi MatchParen cterm=bold ctermfg=214 ctermbg=black
au ColorScheme * hi SpellBad ctermfg=23 cterm=none ctermbg=none
au ColorScheme * hi LineNr       ctermbg=none ctermfg=240 cterm=italic " 行番号
au ColorScheme * hi StatusLine   ctermbg=none " アクティブなステータスライン
au ColorScheme * hi StatusLineNC ctermbg=none " 非アクティブなステータスライン
au ColorScheme * hi Comment      ctermfg=243 cterm=italic " コメントアウト
au ColorScheme * hi Statement    ctermfg=45
au ColorScheme * hi DiffAdd      ctermbg=24  " 追加行
au ColorScheme * hi Identifier   ctermfg=45 "cterm=bold

set number
set tabstop=2
set shiftwidth=2
set expandtab
set splitright
set clipboard=unnamed
set hls
set updatetime=100
set termguicolors
set completefunc=emoji#complete
let g:ale_sign_error = '🥺'
let g:ale_sign_warning = '😅'
let g:ale_fix_on_save = 1
highlight ALEErrorSign ctermbg=NONE ctermfg=red
highlight ALEWarningSign ctermbg=NONE ctermfg=yellow
let g:python_host_prog = $HOME . '/.pyenv/versions/neovim2/bin/python'
let g:python3_host_prog = $HOME . '/.pyenv/versions/neovim3/bin/python'
let g:ruby_host_prog = $HOME . '/.rbenv/versions/2.6.3/bin/neovim-ruby-host'
let g:node_host_prog = $HOME . '/.nodebrew/node/v12.16.0/lib/node_modules/neovim/bin/cli.js'
" autocmd VimEnter * execute 'NERDTree'

nmap <C-b> :NERDTreeToggle<CR>
nmap <F8> :TagbarToggle<CR>
nmap <silent> <C-k> <Plug>(ale_previous_wrap)
nmap <silent> <C-j> <Plug>(ale_next_wrap)

let g:ale_fixers = {
  \   '*': ['remove_trailing_lines', 'trim_whitespace'],
  \   'python': ['black'],
  \   'php': ['php_cs_fixer'],
  \ }
let g:ale_fix_on_save = 1

let g:UltiSnipsExpandTrigger='<c-j>'
let g:UltiSnipsJumpForwardTrigger="<c-b>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"

nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)
nnoremap <silent> K :call <SID>show_documentation()<CR>

function! s:show_documentation()
  if (index(['vim','help'], &filetype) >= 0)
    execute 'h '.expand('<cword>')
  else
    call CocAction('doHover')
  endif
endfunction

let g:neoterm_default_mod='belowright'
let g:neoterm_size=10
let g:neoterm_autoscroll=1
tnoremap <silent> <C-w> <C-\><C-n><C-w>
nnoremap <silent> <C-n> :TREPLSendLine<CR>j0
noremap <silent> <C-n> V:TREPLSendSelection<CR>'>j0
nmap <F5> :UndotreeToggle<CR>
nmap s <Plug>(easymotion-overwin-f2)
