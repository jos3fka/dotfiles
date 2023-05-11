vim.keymap.set("n", "<leader>xx", "<cmd>TroubleToggle<cr>",
  {silent = true, noremap = true}
)
vim.keymap.set("n", "<leader>xw", "<cmd>TroubleToggle workspace_diagnostics<cr>",
  {silent = true, noremap = true}
)
vim.keymap.set("n", "<leader>xd", "<cmd>TroubleToggle document_diagnostics<cr>",
  {silent = true, noremap = true}
)
vim.keymap.set("n", "<leader>xl", "<cmd>TroubleToggle loclist<cr>",
  {silent = true, noremap = true}
)
vim.keymap.set("n", "<leader>xq", "<cmd>TroubleToggle quickfix<cr>",
  {silent = true, noremap = true}
)
vim.keymap.set("n", "gR", "<cmd>TroubleToggle lsp_references<cr>",
  {silent = true, noremap = true}
)

vim.keymap.set("n", "[t", function() require("trouble").next({skip_groups = true, jump = true}) end)
vim.keymap.set("n", "]t", function() require("trouble").previous({skip_groups = true, jump = true}) end)
vim.keymap.set("n", "[T", function() require("trouble").first({skip_groups = true, jump = true}) end)
vim.keymap.set("n", "]T", function() require("trouble").last({skip_groups = true, jump = true}) end)
