-- noremap = true ensures that keymapping wont propagate
-- silent = true disables that the keymappings will be shown in the cl when executed
local opts = { noremap = true, silent = true }

-- alias/variable for the keymapping
local keymap = vim.api.nvim_set_keymap

-- Freeing the key space 
keymap("", "<Space>", "<Nop>", opts)

-- Assigning a new leader key
vim.g.mapleader = " "

-- NEUTRAL
-- Opens file explorer Vertically with 38 percent of the lower half 
keymap("n", "<leader>e", ":Lex 30<cr>", opts)

-- Change keybindings for switch buffers/window
keymap("n", "<C-h>", "<C-w>h", opts)
keymap("n", "<C-j>", "<C-w>j", opts)
keymap("n", "<C-k>", "<C-w>k", opts)
keymap("n", "<C-l>", "<C-w>l", opts)
keymap("n", "<S-l>", ":bnext<CR>", opts)
keymap("n", "<S-h>", ":bprevious<CR>", opts)

-- Resize the current woking window/pane
keymap("n", "<S-Up>", ":resize +2<CR>", opts)
keymap("n", "<S-Down>", ":resize -2<CR>", opts)
keymap("n", "<S-Left>", ":vertical resize -2<CR>", opts)
keymap("n", "<S-Right>", ":vertical resize +2<CR>", opts)


-- Insert --
-- Press jk fast to enter
keymap("i", "jk", "<ESC>", opts)
