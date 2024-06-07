return
{
  'nvim-telescope/telescope.nvim', tag = '0.1.6',
  dependencies = { 'nvim-lua/plenary.nvim' },
  config = function()
    local builtin = require("telescope.builtin")
    local telescope = require('telescope')
    telescope.setup {
      pickers = {
        find_files = {
          find_command = {'rg', '--files', '--iglob', '!.git', '--hidden'}
          }
        }
      }
    vim.keymap.set('n', '<leader>ff', builtin.find_files, {})
    vim.keymap.set('n', '<leader>fg', builtin.live_grep, {})
    vim.keymap.set('n', '<leader>fp', builtin.git_files, {})
  end
}
