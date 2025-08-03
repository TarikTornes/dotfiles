vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

-- alias/variable for the keymapping
local keymap = vim.api.nvim_set_keymap

-- noremap = true ensures that keymapping wont propagate
-- silent = true disables that the keymappings will be shown in the cl when executed
local opts = { noremap = true, silent = true }







-- NEUTRAL --

-- Clear highlights on search when pressing <Esc> in normal mode
--  See `:help hlsearch`
vim.keymap.set('n', '<Esc>', '<cmd>nohlsearch<CR>')







-- INSERT --

-- Press jk fast to enter
vim.keymap.set('i', 'jk', '<ESC>', opts)
