" auto-install vim-plug
if empty(glob('~/.config/nvim/autoload/plug.vim'))
  silent !curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  "autocmd VimEnter * PlugInstall
  "autocmd VimEnter * PlugInstall | source $MYVIMRC
endif

"" Vim Script
"colorscheme catppuccin
"
call plug#begin('~/.config/nvim/autoload/plugged')

    "Catppuccin theme
      Plug 'catppuccin/nvim', {'as': 'catppuccin'}
   
    " TokyoNight theme
      Plug 'folke/tokyonight.nvim', { 'branch': 'main' }

    "Vimtex
      Plug 'lervag/vimtex'
      let g:vimtex_view_general_viewer = 'evince'
      
    "TeX Snips
      Plug 'SirVer/ultisnips'
	    let g:UltiSnipsExpandTrigger = '<tab>'
	    let g:UltiSnipsJumpForwardTrigger = '<tab>'
	    let g:UltiSnipsJumpBackwardTrigger = '<s-tab>'
	    let g:UltiSnipsSnippetDirectories=["UltiSnips", "tex.snippets"]
   
    "Better Syntax Support
      Plug 'sheerun/vim-polyglot'
    
    "File Explorer
      Plug 'scrooloose/NERDTree'
      nnoremap <silent> <C-N> :NERDTreeToggle<CR>
      " augroup nerdtree_open
      "   autocmd!
      "  autocmd VimEnter * NERDTree | wincmd p
      " augroup END

    "Auto pairs for '(' '[' '{'
      Plug 'jiangmiao/auto-pairs'

call plug#end()

" Tokyonight theme

" Example config in VimScript
let g:tokyonight_style = "night"
let g:tokyonight_italic_functions = 1
let g:tokyonight_sidebars = [ "qf", "vista_kind", "terminal", "packer" ]

" Change the "hint" color to the "orange" color, and make the "error" color bright red
let g:tokyonight_colors = {
  \ 'hint': 'orange',
  \ 'error': '#ff0000'
\ }

" Vim Script
"colorscheme catppuccin

colorscheme tokyonight
