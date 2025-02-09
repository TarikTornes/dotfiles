vim.api.nvim_create_user_command('Spell', 'setlocal spell spelllang=en_us', {})
vim.api.nvim_create_user_command('Spellde', 'setlocal spell spelllang=de', {})
vim.api.nvim_create_user_command('NoSpell', 'setlocal nospell', {})
