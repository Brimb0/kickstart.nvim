return {
  'nvimtools/none-ls.nvim',
  enabled = false,
  config = function()
    local augroup = vim.api.nvim_create_augroup('LspFormatting', {})
    local _, null_ls = pcall(require, 'null-ls')
    null_ls.setup {
      on_attach = function(client, bufnr)
        if client.supports_method 'textDocument/formatting' then
          vim.api.nvim_clear_autocmds { group = augroup, buffer = bufnr }
          vim.api.nvim_create_autocmd('BufWritePre', {
            group = augroup,
            buffer = bufnr,
            callback = function()
              -- on 0.8, you should use vim.lsp.buf.format({ bufnr = bufnr }) instead
              -- on later neovim version, you should use vim.lsp.buf.format({ async = false }) instead
              vim.lsp.buf.format { async = false }
            end,
          })
        end
      end,
      sources = {
        -- null_ls.builtins.formatting.stylua,
        -- null_ls.builtins.formatting.prettier,
        null_ls.builtins.diagnostics.checkstyle.with {
          extra_args = { '-c', '/home/brim/.config/programming/format/checkstyle.xml' },
        },
        -- null_ls.builtins.diagnostics.semgrep,
      },
    }
  end,
}
