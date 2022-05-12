set number
let g:airline_powerline_fonts = 1
call plug#begin()
	Plug 'ellisonleao/gruvbox.nvim'
 	Plug 'vim-airline/vim-airline'
	Plug 'neovim/nvim-lspconfig'
	Plug 'tpope/vim-fugitive'
	Plug 'vim-airline/vim-airline-themes'
call plug#end()
set background=dark
colorscheme gruvbox
lua << EOF
require'lspconfig'.clangd.setup{}
local on_attach = function(client, bufnr)
  -- Enable completion triggered by <c-x><c-o>
  vim.api.nvim_buf_set_option(bufnr, 'omnifunc', 'v:lua.vim.lsp.omnifunc')
  end
EOF
