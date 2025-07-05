
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
    "p00f/nvim-ts-rainbow",
    "nvim-treesitter/playground",

  -- LSP

  "neovim/nvim-lspconfig",
  "williamboman/mason.nvim",
  "williamboman/mason-lspconfig.nvim",
{
  "nvimtools/none-ls.nvim",
  dependencies = {
    "nvim-lua/plenary.nvim",
    "nvimtools/none-ls-extras.nvim"
  },
  config = function()
    -- CORRECTED: Require "none-ls" instead of "null-ls"
    local null_ls = require("null-ls")

    null_ls.setup({
        sources = {
            null_ls.builtins.formatting.stylua,
            null_ls.builtins.completion.spell,
            require("none-ls.diagnostics.eslint"), -- requires none-ls-extras.nvim
        },
    })
  end,
},
    {
  "iabdelkareem/csharp.nvim",
  dependencies = {
    "williamboman/mason.nvim",
    "mfussenegger/nvim-dap",
    "Tastyep/structlog.nvim",
  },
  config = function ()
    require("mason").setup()
    local csharp_config = require("csharp")
    require("csharp").setup(csharp_config)

  end

    },

  -- Snippets
   {"L3MON4D3/LuaSnip", build = "make install_jsregexp"},
  "rafamadriz/friendly-snippets",
})
