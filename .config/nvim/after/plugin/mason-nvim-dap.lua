require("mason-nvim-dap").setup({
    ensure_installed = { "python", "java" },
    handlers = {},
})

vim.keymap.set('n', '<Leader>dc', function() require('dap').continue() end)
vim.keymap.set('n', '<Leader>db', function() require('dap').toggle_breakpoint() end)
vim.keymap.set('n', '<Leader>ds', function() require('dap').terminate() end)

vim.keymap.set('n', '<leader>dn', function() require('dap').step_over() end)
vim.keymap.set('n', '<leader>dl', function() require('dap').step_into() end)
vim.keymap.set('n', '<leader>dh', function() require('dap').step_out() end)


require("dapui").setup()
vim.keymap.set('n', '<leader>dt', function() require("dapui").toggle() end)

require("nvim-dap-virtual-text").setup()

