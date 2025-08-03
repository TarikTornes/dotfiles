vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- noremap = true ensures that keymapping wont propagate
-- silent = true disables that the keymappings will be shown in the cl when executed
local opts = { noremap = true, silent = true }

-- NEUTRAL --

-- Clear highlights on search when pressing <Esc> in normal mode
--  See `:help hlsearch`
vim.keymap.set("n", "<Esc>", "<cmd>nohlsearch<CR>")
vim.keymap.set("n", "<leader>l", "<cmd>Lex<CR>", { desc = "[L]explorer" })

-- INSERT --

-- Press jk fast to enter
vim.keymap.set("i", "jk", "<ESC>", opts)
