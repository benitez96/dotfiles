call plug#begin('~/.config/nvim/plugged')
    " Comment code
    Plug 'tpope/vim-commentary'

    if exists('g:vscode')
        " Easy motion for VSCode
        Plug 'asvetliakov/vim-easymotion'
    else
        "
        " ES2015 code snippets (Optional)
        " Plug 'epilande/vim-es2015-snippets'

        " React code snippets
        " Plug 'epilande/vim-react-snippets'
        " Plug 'mlaursen/vim-react-snippets'

        " Ultisnips
        Plug 'SirVer/ultisnips'
        
        " Syntax support
        Plug 'sheerun/vim-polyglot'
        " Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
        " Autopairs
        Plug 'jiangmiao/auto-pairs'
        " File explorer
        Plug 'scrooloose/NERDTree'    
        " Icons
        Plug 'ryanoasis/vim-devicons'
        " Intellisense
        Plug 'neoclide/coc.nvim', {'branch': 'release'}
        " Airline
        Plug 'vim-airline/vim-airline'
        Plug 'vim-airline/vim-airline-themes'
        " Indent guides
        Plug 'Yggdroot/indentLine' 
        " Git integration
        Plug 'mhinz/vim-signify'
        " Autoclose tags
        Plug 'alvan/vim-closetag'
        " Ranger
        Plug 'kevinhwang91/rnvimr', {'do': 'make sync'}
        " Fzf
        Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
        Plug 'junegunn/fzf.vim'
        Plug 'airblade/vim-rooter'
        " Prettier
        Plug 'prettier/vim-prettier', { 'do': 'yarn install' }

        " Multi cursor
        Plug 'mg979/vim-visual-multi', {'branch': 'master'}
        
        " CoC plugins
        Plug 'neoclide/coc-tsserver', {'do': 'yarn install --frozen-lockfile'}

        " Github Copilot
        Plug 'github/copilot.vim'

        " Themes
        Plug 'joshdick/onedark.vim'
        Plug 'kaicataldo/material.vim'
        Plug 'tomasiser/vim-code-dark'
        Plug 'crusoexia/vim-monokai'
        Plug 'ayu-theme/ayu-vim'
        Plug 'dracula/vim', { 'as': 'dracula' }
        Plug 'phanviet/vim-monokai-pro'
        
        " Auto-imports
        Plug 'kristijanhusak/vim-js-file-import', {'do': 'npm install'}

        " TagBar
        Plug 'preservim/tagbar'

        Plug 'mhinz/vim-startify'

        " Vim Surround
        Plug 'tpope/vim-surround'
        Plug 'tpope/vim-repeat'

        " ACK - searcher
        Plug 'mileszs/ack.vim'

        " Git integration
        Plug 'mhinz/vim-signify'
        Plug 'tpope/vim-fugitive'
        Plug 'tpope/vim-rhubarb'
        Plug 'junegunn/gv.vim'

    endif
call plug#end()
