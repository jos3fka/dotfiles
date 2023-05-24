local lsp = require("lsp-zero").preset({ })
local builtin = require("telescope.builtin")

lsp.on_attach(function(_, bufnr)
  local opts = {buffer = bufnr, remap = false}

  vim.keymap.set("n", "<leader>gd", builtin.lsp_definitions, opts)
  vim.keymap.set("n", "<leader>gi", builtin.lsp_implementations, opts)
  vim.keymap.set("n", "<leader>gt", builtin.lsp_type_definitions, opts)
  vim.keymap.set("n", "<leader>gci", builtin.lsp_incoming_calls, opts)
  vim.keymap.set("n", "<leader>gco", builtin.lsp_outgoing_calls, opts)
  vim.keymap.set("n", "<leader>K", function() vim.lsp.buf.hover() end, opts)
  vim.keymap.set("n", "<leader>ts", builtin.lsp_dynamic_workspace_symbols, opts)
  vim.keymap.set("n", "<leader>td", builtin.diagnostics, opts)
  vim.keymap.set("n", "<leader>ta", function() vim.lsp.buf.code_action() end, opts)
  vim.keymap.set("n", "<leader>ref", builtin.lsp_references, opts)
  vim.keymap.set("n", "<leader>rn", function() vim.lsp.buf.rename() end, opts)
  vim.keymap.set("i", "<leader>sh", function() vim.lsp.buf.signature_help() end, opts)
  vim.keymap.set("n", "]d", function() vim.diagnostic.goto_prev() end, opts)
  vim.keymap.set("n", "[d", function() vim.diagnostic.goto_next() end, opts)
end)

require("lspconfig").lua_ls.setup(lsp.nvim_lua_ls())

lsp.skip_server_setup({'jdtls'})

lsp.setup()


local cmp = require('cmp')
local cmp_select = {behavior = cmp.SelectBehavior.Select}
local cmp_action = require('lsp-zero').cmp_action()

require('luasnip.loaders.from_vscode').lazy_load()

cmp.setup({
  sources = {
    {name = 'nvim_lua'},
    {name = 'path'},
    {name = 'nvim_lsp'},
    {name = 'buffer', keyword_length = 3},
    {name = 'luasnip', keyword_length = 2},
    {name = 'nvim_lsp_signature_help'},
  },
  mapping = {
    ['<C-l>'] = cmp_action.luasnip_jump_forward(),
    ['<C-h>'] = cmp_action.luasnip_jump_backward(),
    ['<C-p>'] = cmp.mapping.select_prev_item(cmp_select),
    ['<C-n>'] = cmp.mapping.select_next_item(cmp_select),
    ['<C-e>'] = cmp.mapping.abort(),
    ['<CR>'] = cmp.mapping.confirm({ select = true }),
    ['<C-Space>'] = cmp.mapping.complete(),
  },
  formatting = {
    fields = {'abbr', 'kind', 'menu'},
    format = require('lspkind').cmp_format({
      mode = 'symbol', -- show only symbol annotations
      maxwidth = 50, -- prevent the popup from showing more than provided characters
      ellipsis_char = '...', -- when popup menu exceed maxwidth, the truncated part would show ellipsis_char instead
    })
  }
})
