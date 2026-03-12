---@module 'lazy'
---@type LazySpec
return {
  'nvim-telescope/telescope-project.nvim',
  dependencies = {
    'nvim-telescope/telescope.nvim',
  },
  config = function()
    require('telescope').setup {
      extensions = {
        project = {
          base_dirs = {
            { path = '~/Tools/Github', max_depth = 2 },
          },
        },
      },
    }

    pcall(require('telescope').load_extension, 'project')
    vim.keymap.set('n', '<leader>sp', '<cmd>Telescope project<CR>', { desc = '[S]earch [P]rojects' })
  end,
}
