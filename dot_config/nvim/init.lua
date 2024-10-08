local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

require "tariktornes.plugins"

--vim.cmd "colorscheme darkplus"
-- For Lua
vim.opt.termguicolors = true
vim.cmd.colorscheme 'melange'
vim.api.nvim_set_hl(0, 'Normal', { bg = 'NONE' })


require "tariktornes.options"
require "tariktornes.keymaps"
require "tariktornes.cmp"
--require "tariktornes.colorscheme"
require "tariktornes.vimtex"
require "tariktornes.lsp"
require "tariktornes.telescope"
require "tariktornes.treesitter"

