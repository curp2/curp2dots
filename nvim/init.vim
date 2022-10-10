set nocompatible
filetype plugin on      

augroup pencil
  autocmd!
  autocmd FileType markdown,mkd call pencil#init({'wrap': 'soft'})
  autocmd FileType text         call pencil#init()
augroup END

call plug#begin('~/.config/nvim/plugged')
Plug 'chaimleib/vim-renpy'
Plug 'vimwiki/vimwiki'
Plug 'nekonako/xresources-nvim'
Plug 'godlygeek/tabular'
Plug 'preservim/vim-markdown'
Plug 'lambdalisue/suda.vim'
Plug 'preservim/vim-pencil'
Plug 'Pocco81/TrueZen.nvim'
Plug 'folke/twilight.nvim'
Plug 'yuratomo/w3m.vim'
call plug#end()

autocmd TextChanged,TextChangedI *.md silent write
autocmd TextChanged,TextChangedI *.rpy silent write

let g:vimwiki_list = [{'path': '~/vimwiki/',
                      \ 'syntax': 'markdown', 'ext': '.md'}]
colorscheme xresources

" autocmd VimEnter * TZAtaraxis
map <F12> :TZAtaraxis<CR>
lua << EOF
local true_zen = require("true-zen")
true_zen.setup({
	modes = {
		ataraxis = {
			ideal_writing_area_width = {66},
			quit = "close"
			}
		},
	integrations = { 
		twilight = false
		}
	}
)
EOF
