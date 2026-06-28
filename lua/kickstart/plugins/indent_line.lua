-- Add indentation guides even on blank lines

---@module 'lazy'
---@type LazySpec
return {
  'lukas-reineke/indent-blankline.nvim',
  -- Enable `lukas-reineke/indent-blankline.nvim`
  -- See `:help ibl`
  main = 'ibl',
  ---@module 'ibl'
  ---@type ibl.config
  config = function()
    local hooks = require 'ibl.hooks'
    hooks.register(hooks.type.HIGHLIGHT_SETUP, function()
      vim.api.nvim_set_hl(0, 'IblIndent', { fg = '#3b3f4c' }) -- faint outer levels
      vim.api.nvim_set_hl(0, 'IblScope', { fg = '#6c7086' }) -- brighter current scope
    end)
    require('ibl').setup {
      indent = { char = '│' },
      scope = { enabled = true, char = '│', show_start = false, show_end = false },
    }
  end,
}
