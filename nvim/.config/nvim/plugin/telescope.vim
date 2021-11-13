nnoremap <leader>f/ :lua require('telescope.builtin').live_grep()<CR>
nnoremap <leader>fgf :lua require('telescope.builtin').git_files()<CR>
nnoremap <leader>fgc :lua require('telescope.builtin').git_commits()<CR>
nnoremap <leader>fgb :lua require('telescope.builtin').git_branches()<CR>
nnoremap <leader>fgs :lua require('telescope.builtin').git_stash()<CR>
nnoremap <Leader>ff :lua require('telescope.builtin').find_files({hidden=true})<CR>
nnoremap <Leader>fz :lua require('telescope.builtin').current_buffer_fuzzy_find()<CR>
nnoremap <leader>fw :lua require('telescope.builtin').grep_string { search = vim.fn.expand("<cword>") }<CR>
nnoremap <leader>fb :lua require('telescope.builtin').buffers()<CR>
nnoremap <leader>fr :lua require('telescope.builtin').oldfiles()<CR>
nnoremap <leader>fc :lua require('telescope.builtin').command_history()<CR>
nnoremap <leader>fls :lua require('telescope.builtin').lsp_document_symbols()<CR>
nnoremap <leader>fld :lua require('telescope.builtin').lsp_workspace_diagnostics()<CR>
nnoremap <leader>flc :lua require('telescope.builtin').code_actions()<CR>
nnoremap <leader>fh :lua require('telescope.builtin').help_tags()<CR>
nnoremap <leader>ft :lua require('jos3fka.telescope').search_templates()<CR>
nnoremap <leader>fv :lua require('jos3fka.telescope').search_vim()<CR>

lua << EOF
require('telescope').setup{
  defaults = {
    vimgrep_arguments = {
      'rg',
      '--color=never',
      '--no-heading',
      '--with-filename',
      '--line-number',
      '--column',
      '--smart-case'
    },
    prompt_prefix = "> ",
    selection_caret = "> ",
    entry_prefix = "  ",
    initial_mode = "insert",
    selection_strategy = "reset",
    sorting_strategy = "descending",
    layout_strategy = "horizontal",
    layout_config = {
      horizontal = {
        mirror = false,
      },
      vertical = {
        mirror = false,
      },
    },
    file_sorter =  require'telescope.sorters'.get_fuzzy_file,
    file_ignore_patterns = {},
    generic_sorter =  require'telescope.sorters'.get_generic_fuzzy_sorter,
    winblend = 0,
    border = {},
    borderchars = { '─', '│', '─', '│', '╭', '╮', '╯', '╰' },
    color_devicons = true,
    use_less = true,
    path_display = {},
    set_env = { ['COLORTERM'] = 'truecolor' }, -- default = nil,
    file_previewer = require'telescope.previewers'.vim_buffer_cat.new,
    grep_previewer = require'telescope.previewers'.vim_buffer_vimgrep.new,
    qflist_previewer = require'telescope.previewers'.vim_buffer_qflist.new,

    -- Developer configurations: Not meant for general override
    buffer_previewer_maker = require'telescope.previewers'.buffer_previewer_maker
  }
}

EOF
