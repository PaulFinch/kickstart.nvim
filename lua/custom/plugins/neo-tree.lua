---@module 'lazy'
---@type LazySpec
return {
  'nvim-neo-tree/neo-tree.nvim',
  cmd = 'Neotree',
  dependencies = {
    'MunifTanjim/nui.nvim',
  },
  keys = {
    { '-', ':Neotree reveal<CR>', desc = 'NeoTree reveal', silent = true },
  },
  opts = {
    filesystem = {
      filtered_items = {
        hide_dotfiles = false,
      },
      window = {
        mappings = {
          ['-'] = 'close_window',
        },
      },
    },
  },
}
