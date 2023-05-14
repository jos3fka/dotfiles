local mark = require("harpoon.mark")
local ui = require("harpoon.ui")
local term = require("harpoon.term")

vim.keymap.set("n", "<leader>ha", mark.add_file)
vim.keymap.set("n", "<leader>hq", function() ui.toggle_quick_menu() end)

vim.keymap.set("n", "<leader>1", function() ui.nav_file(1) end)
vim.keymap.set("n", "<leader>2", function() ui.nav_file(2) end)

vim.keymap.set("n", "<leader>3", function() term.gotoTerminal(1) end)
