" Install Plug if needed
let need_to_install_plugins = 0
if empty(glob('~/.local/share/nvim/plugged'))
    let need_to_install_plugins = 1
endif

" Plugins
call plug#begin(stdpath('data') . '/plugged')

Plug 'hrsh7th/cmp-buffer', { 'branch': 'main' }
Plug 'hrsh7th/cmp-nvim-lsp', { 'branch': 'main' }
Plug 'hrsh7th/cmp-path', { 'branch': 'main' }
Plug 'hrsh7th/cmp-vsnip', { 'branch': 'main' }
Plug 'hrsh7th/nvim-cmp', { 'branch': 'main' }
Plug 'hrsh7th/vim-vsnip'
Plug 'jiangmiao/auto-pairs'
Plug 'jremmen/vim-ripgrep'
Plug 'kdheepak/tabline.nvim', { 'branch': 'main' }
Plug 'kyazdani42/nvim-web-devicons'
Plug 'neovim/nvim-lspconfig'
Plug 'nvim-lualine/lualine.nvim'
Plug 'phanviet/vim-monokai-pro'
Plug 'ray-x/lsp_signature.nvim'
Plug 'sheerun/vim-polyglot'
Plug 'timonv/vim-cargo'
Plug 'tpope/vim-commentary' " gcc comment line | gc comment motion
Plug 'tpope/vim-surround'   " ys (add surround) | ds (delete surround) | cs (change surround)
Plug 'vim-utils/vim-man'

call plug#end()

" Install Plug plugins
if need_to_install_plugins == 1
    echo "Installing plugins..."
    silent! PlugInstall
    echo "Done!"
    q
    q
endif

