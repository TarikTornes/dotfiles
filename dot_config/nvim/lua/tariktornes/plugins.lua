
require("lazy").setup({
  -- My plugins here
  -- "wbthomason/packer.nvim",                 -- Have packer manage itself
  "nvim-lua/popup.nvim",                    -- An implementation of the Popup API from vim in Neovim
  "nvim-lua/plenary.nvim",                  -- Useful lua functions used ny lots of plugins
{
  "lervag/vimtex",
  lazy = false,     -- we don't want to lazy load VimTeX
  -- tag = "v2.15", -- uncomment to pin to a specific release
  init = function()
    -- VimTeX configuration goes here
  end
},

  -- Colorschemes
  -- "lunarvim/colorschemes"                -- A bunch of colorschemes you can try out
  "lunarvim/darkplus.nvim",
  "rktjmp/lush.nvim",

  -- cmp plugins
  "savq/melange-nvim",
  "hrsh7th/nvim-cmp",                       -- The completion plugin
  "hrsh7th/cmp-buffer",                     -- buffer completions
  "hrsh7th/cmp-path",                       -- path completions
  "hrsh7th/cmp-cmdline",                    -- cmdline completions
  "saadparwaiz1/cmp_luasnip",               -- snippet completions
  "hrsh7th/cmp-nvim-lsp",
  "hrsh7th/cmp-nvim-lua",

 -- Telescope
  "nvim-telescope/telescope.nvim",
  "nvim-telescope/telescope-live-grep-args.nvim",
  "nvim-telescope/telescope-media-files.nvim",

   -- Treesitter
   {"nvim-treesitter/nvim-treesitter", build = ":TSUpdate"},

  -- LSP

  "neovim/nvim-lspconfig",
  "williamboman/mason.nvim",
  "williamboman/mason-lspconfig.nvim",
  "jose-elias-alvarez/null-ls.nvim",

  -- Snippets
   {"L3MON4D3/LuaSnip", build = "make install_jsregexp"},
  "rafamadriz/friendly-snippets",           -- snippets
})
