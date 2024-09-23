return {
  {
    'craftzdog/solarized-osaka.nvim',
    lazy = false,
    priority = 1000,
    enabled = true,
    config = function()
      require('solarized-osaka').setup {
        transparent = true,
        terminal_colors = true,
        styles = {
          comments = { italic = true },
          keywords = { italic = false },
          functions = {},
          variables = {},
          sidebars = 'transparent',
          floats = 'transparent',
        },
        sidebars = { 'qf', 'help' },
        day_brightness = 1.0,
        hide_inactive_statusLine = false,
        dim_inactive = true,
        lualine_bold = true,
      }
      vim.cmd [[colorscheme solarized-osaka]]
    end,
  },

  {
    {
      'diegoulloao/neofusion.nvim',
      lazy = false,
      priority = 1000,
      enabled = false,
      config = function()
        require('neofusion').setup {
          terminal_colors = true, -- add neovim terminal colors
          undercurl = true,
          underline = true,
          bold = true,
          italic = {
            strings = true,
            emphasis = true,
            comments = true,
            operators = false,
            folds = true,
          },
          strikethrough = true,
          invert_selection = false,
          invert_signs = false,
          invert_tabline = false,
          invert_intend_guides = false,
          inverse = true, -- invert background for search, diffs, statuslines and errors
          palette_overrides = {},
          overrides = {},
          dim_inactive = false,
          transparent_mode = true,
        }

        vim.cmd [[ colorscheme neofusion ]]
      end,
    },
  },
}
