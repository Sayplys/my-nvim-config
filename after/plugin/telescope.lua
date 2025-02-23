local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>ea', builtin.find_files, {desc = 'Find files'})
vim.keymap.set('n', '<C-p>', builtin.git_files, {desc = 'Git files'})
vim.keymap.set('n', '<leader>ep', function()
	builtin.grep_string({search = vim.fn.input('(Ripgrep needed) Grep > '), use_regex = true});
end, {desc = 'Grep string (need to install ripgrep)'})
