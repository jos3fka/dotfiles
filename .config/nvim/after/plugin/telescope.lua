local telescope = require("telescope")
telescope.load_extension("ui-select")
telescope.load_extension("possession")

require("possession").setup{}

local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>ff', function()
	builtin.find_files({hidden=true, no_ignore=false})
end, {})
vim.keymap.set('n', '<leader>fv', builtin.git_files, {})
vim.keymap.set('n', '<leader>fg', builtin.live_grep, {})
vim.keymap.set('n', '<leader>fb', builtin.buffers, {})
vim.keymap.set('n', '<leader>fr', builtin.oldfiles, {})
vim.keymap.set('n', '<leader>fh', builtin.help_tags, {})
vim.keymap.set('n', '<leader>fs', telescope.extensions.possession.list, {})
