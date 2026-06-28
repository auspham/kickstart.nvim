-- Project-wide search & replace across many files at once.
-- <leader>sr opens the panel; <leader>sr in visual mode seeds the selection.
---@module 'lazy'
---@type LazySpec
return {
  'MagicDuck/grug-far.nvim',
  cmd = 'GrugFar',
  keys = {
    {
      '<leader>sR',
      function()
        require('grug-far').open { prefills = { flags = '--hidden --no-ignore' } }
      end,
      mode = 'n',
      desc = '[S]earch & [R]eplace (project)',
    },
    {
      '<leader>sR',
      function()
        require('grug-far').open { visualSelectionUsage = 'operate-within-range', prefills = { flags = '--hidden --no-ignore' } }
      end,
      mode = 'x',
      desc = '[S]earch & [R]eplace (selection)',
    },
  },
  opts = {},
}
