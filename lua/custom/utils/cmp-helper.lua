local M = {}

local _, cmp = pcall(require, 'cmp')
local _, types = pcall(require, 'cmp.types.cmp')
local _, luasnip = pcall(require, 'luasnip')
local confirm_behavior = types.ConfirmBehavior
local icons = require 'custom.utils.icons'

local has_words_before = function()
  unpack = unpack or table.unpack
  local line, col = unpack(vim.api.nvim_win_get_cursor(0))
  return col ~= 0 and vim.api.nvim_buf_get_lines(0, line - 1, line, true)[1]:sub(col, col):match '%s' == nil
end

M.handle_format = function(entry, vim_item)
  local max_width = 0
  if max_width ~= 0 and #vim_item.abbr > max_width then
    vim_item.abbr = string.sub(vim_item.abbr, 1, max_width - 1) .. icons.ui.Ellipsis
  end
  vim_item.kind = icons.kind[vim_item.kind]
  if entry.source.name == 'copilot' then
    vim_item.kind = icons.git.Octoface
    vim_item.kind_hl_group = 'CmpItemKindCopilot'
  end
  local DUPLICATES_DEFAULT = 0
  local DUPLICATES = {
    buffer = 1,
    path = 1,
    nvim_lsp = 0,
    luasnip = 1,
  }
  local SOURCE_NAMES = {
    nvim_lsp = '(LSP)',
    copiloet = '(Copilot)',
    treesitter = '(TS)',
    path = '(Path)',
    buffer = '(Buffer)',
  }
  vim_item.menu = SOURCE_NAMES[entry.source.name]
  vim_item.dup = DUPLICATES[entry.source.name] or DUPLICATES_DEFAULT
  return vim_item
end

M.handle_confirm = function(fallback)
  if cmp.visible() then
    local con_opts = {
      behavior = cmp.ConfirmBehavior.Replace,
      select = false,
    }
    local confirm_opts = vim.deepcopy(con_opts)
    local is_i_mode = function()
      return vim.api.nvim_get_mode().mode:sub(1, 1) == 'i'
    end
    if is_i_mode() then
      confirm_opts.behavior = confirm_behavior.Insert
    end
    local entry = cmp.get_selected_entry()
    local is_copilot = entry and entry.source.name == 'copilot'
    if is_copilot then
      confirm_opts.behavior = confirm_behavior.Replace
      confirm_opts.select = true
    end
    if cmp.confirm(confirm_opts) then
      return
    end
  end
  fallback()
end

M.handle_tab = function(fallback)
  if cmp.visible() and has_words_before() then
    cmp.select_next_item { behavior = cmp.SelectBehavior.Select }
  else
    fallback()
  end
end

-- M.handle_tab = function(fallback)
--   if cmp.visible() then
--     cmp.select_next_item()
--   elseif luasnip.expand_or_jumpable() then
--     luasnip.expand_or_jump()
--   elseif has_words_before then
--     cmp.complete()
--   else
--     fallback()
--   end
-- end

M.handle_stab = function(fallback)
  if cmp.visible() and has_words_before() then
    cmp.select_prev_item { behavior = cmp.SelectBehavior.Select }
  else
    fallback()
  end
end

-- M.handle_stab = function(fallback)
--   if cmp.visible() then
--     cmp.select_prev_item()
--   elseif luasnip.jumpable(-1) then
--     luasnip.jump(-1)
--   else
--     fallback()
--   end
-- end

return M
