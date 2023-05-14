vim.g.mapleader = ","

-- netrw
vim.keymap.set("n", "<C-e>", vim.cmd.Ex)

-- Move lines in visual mode
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

-- Exit terminal mode
vim.keymap.set("t", "<ESC>", "<C-\\><C-n>")

-- Format buffer
vim.keymap.set("n", "<leader>fi", vim.lsp.buf.format)

-- Replace without copy
vim.keymap.set("x", "<leader>p", [["_dP]])

-- Delete without copy
vim.keymap.set({ "n", "v" }, "<leader>d", [["_d]])

-- Copy to clipboard
vim.keymap.set({ "n", "v" }, "<leader>y", [["+y]])
vim.keymap.set("n", "<leader>Y", [["+Y]])

-- Paste from clipboard
vim.keymap.set({ "n", "v" }, "<leader>p", [["+p]])
vim.keymap.set("n", "<leader>P", [["+P]])

-- Change cwd
vim.keymap.set("n", "<leader>cd", "<cmd>cd %:p:h<CR>:pwd<CR>")

-- Git
vim.keymap.set("n", "<leader>gs", "<cmd>G<CR>")
vim.keymap.set("n", "<leader>gp", "<cmd>G push<CR>")
vim.keymap.set("n", "<leader>gl", "<cmd>Gclog<CR>")

-- Misc
vim.keymap.set("n", "<leader>fml", "<cmd>CellularAutomaton make_it_rain<CR>")
vim.keymap.set("v", "[b", [[c<c-r>=system('base64', @")<cr><esc>]])
vim.keymap.set("v", "]b", [[c<c-r>=system('base64 --decode', @")<cr><esc>]])
