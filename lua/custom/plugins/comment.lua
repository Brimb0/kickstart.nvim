return {
  {
    'danymat/neogen',
    event = 'BufEnter',
    -- dependencies = "nvim-treesitter/nvim-treesitter",
    config = function()
      require('neogen').setup { snippet_engine = 'luasnip' }
      local opts = { noremap = true, silent = true }
      vim.api.nvim_set_keymap('n', '<Leader>nc', ":lua require('neogen').generate({ type = 'class' })<CR>", opts)
      vim.api.nvim_set_keymap('n', '<Leader>nf', ":lua require('neogen').generate({ type = 'func' })<CR>", opts)
      -- vim.api.nvim_set_keymap("n", "<Leader>fm", ":lua vim.lsp.buf.format()<CR>", opts)
    end,
    -- Uncomment nextline if you want to follow only stable versions
    -- version = "*"
  },
}
