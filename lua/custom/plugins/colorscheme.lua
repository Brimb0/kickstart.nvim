return {
  {
    'craftzdog/solarized-osaka.nvim',
    lazy = false,
    priority = 1000,
    config = function()
      require('solarized-osaka').setup {
        transparent = false,
        terminal_colors = true,
        styles = {
          comments = { italic = true },
          keywords = { italic = false },
          functions = {},
          variables = {},
          sidebars = 'normal',
          floats = 'normal',
        },
        sidebars = { 'qf', 'help' },
        day_brightness = 1,
        hide_inactive_statusLine = true,
        dim_inactive = false,
        lualine_bold = false,
      }
      vim.cmd [[colorscheme solarized-osaka]]
    end,
  },
}
