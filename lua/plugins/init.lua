return require("packer").startup(
  function()
    use "wbthomason/packer.nvim"

    ------------ EDITOR -------------
    use "ayu-theme/ayu-vim"
    use "dracula/vim"
    ---
    use "xiyaowong/nvim-transparent"
    ---
    use {
      "ms-jpq/chadtree",
      branch = "chad",
      run = "python3 -m chadtree deps"
    }
    ---
    use {
      "akinsho/bufferline.nvim",
      tag = "*",
      requires = "kyazdani42/nvim-web-devicons"
    }
    ---
    use {
      "nvim-telescope/telescope.nvim",
      requires = {{"nvim-lua/plenary.nvim"}},
      tag = "nvim-0.5.1"
    }
    ---
    use {
      "nvim-lualine/lualine.nvim",
      requires = {"kyazdani42/nvim-web-devicons", opt = true}
    }
    ---
    -- use "windwp/nvim-autopairs"
    use "jiangmiao/auto-pairs"
    ---
    use "norcalli/nvim-colorizer.lua"
    ---
    use "lukas-reineke/indent-blankline.nvim"
    ---
    use "b3nj5m1n/kommentary"
    ---
    use "mhartington/formatter.nvim"
    ---
    use "nvim-treesitter/nvim-treesitter"

    -------------- LSP ---------------
    use "neovim/nvim-lspconfig"
    use "onsails/lspkind.nvim"
    use "tami5/lspsaga.nvim"
    ---
    use "hrsh7th/cmp-nvim-lsp"
    use "hrsh7th/cmp-buffer"
    use "hrsh7th/cmp-path"
    use "hrsh7th/cmp-cmdline"
    use "hrsh7th/nvim-cmp"
    use "hrsh7th/cmp-vsnip"
    use "hrsh7th/vim-vsnip"
    use "hrsh7th/vim-vsnip-integ"
    ---
    use {
      "fatih/vim-go",
      run = ":GoUpdateBinaries"
    }
    ---
    use "dart-lang/dart-vim-plugin"
    use "reisub0/hot-reload.vim"
  end
)
