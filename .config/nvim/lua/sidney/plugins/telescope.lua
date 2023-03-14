local telescope = require('telescope')

telescope.setup({
  defaults = {
    file_ignore_patterns = { "node_modules" },

    selection_caret = ' ',
    entry_prefix = ' ',
    prompt_prefix = ' ',
    sorting_strategy = 'ascending',
    layout_strategy = 'horizontal',
    layout_config = {
      horizontal = {
        prompt_position = 'top',
      },
      vertical = {
        mirror = false,
      },
    },
  },
  extensions = {
    yank_history = {}
  }
})

-- Load Telescope extensions.
require('telescope').load_extension('yank_history')
