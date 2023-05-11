local nvim_tree = require("nvim-tree")
nvim_tree.setup({
    view = {
        side = "left"
    }
})

vim.keymap.set("n", "<leader>nt", function() vim.cmd(":NvimTreeToggle") end)
vim.keymap.set("n", "<leader>nf", function() vim.cmd(":NvimTreeFindFile") end)
