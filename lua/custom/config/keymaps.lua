-- Clear search highlight with <Esc>
vim.keymap.set('n', '<Esc>', '<cmd>nohlsearch<CR>')

-- Diagnostics
vim.keymap.set('n', '<leader>q', vim.diagnostic.setloclist, { desc = 'Open Diagnostic Quick-fix List' })

-- Split Navigation
vim.keymap.set('n', '<C-h>', '<C-w><C-h>', { desc = 'Move focus to the left window' })
vim.keymap.set('n', '<C-l>', '<C-w><C-l>', { desc = 'Move focus to the right window' })
vim.keymap.set('n', '<C-j>', '<C-w><C-j>', { desc = 'Move focus to the lower window' })
vim.keymap.set('n', '<C-k>', '<C-w><C-k>', { desc = 'Move focus to the upper window' })

-- Move selected line / block of text in visual mode
vim.keymap.set('x', '<C-j>', ":move '>+1<CR>gv-gv", { desc = 'Move text down by 1 line', silent = true })
vim.keymap.set('x', '<C-k>', ":move '<-2<CR>gv-gv", { desc = 'Move text up by 1 line', silent = true })

-- Move current line of text in normal mode
vim.keymap.set('n', '<C-j>', "V :move '>+1<CR>gv-gv", { desc = 'Move text down by 1 line', silent = true })
vim.keymap.set('n', '<C-k>', "V :move '<-2<CR>gv-gv", { desc = 'Move text up by 1 line', silent = true })

vim.keymap.set('n', '<C-d>', '<C-d>zz', { desc = 'Go down further', silent = true })
vim.keymap.set('n', '<C-u>', '<C-u>zz', { desc = 'Go up further', silent = true })

vim.keymap.set('n', '<C-a>', 'gg<S-v>G', { desc = 'Select all text' })

-- Q is very grief in neovim
vim.keymap.set('v', 'Q', '<nop>', { desc = 'Disable Q' })

-- Yank Modifications
-- vim.keymap.set('n', 'x', '_x', { desc = 'Never Yank after deleting a character with x (Normal Mode)' })
-- vim.keymap.set('n', 'X', '_X', { desc = 'Never Yank after deleting a character with X (Normal Mode)' })
-- vim.keymap.set('v', 'x', '_x', { desc = 'Never Yank after deleting a character with x (Visual Mode)' })
-- vim.keymap.set('v', 'X', '_X', { desc = 'Never Yank after deleting a character with X (Visual Mode)' })

-- Tabs
vim.keymap.set('n', 'te', ':tabedit', { desc = 'Edit tab layout' })
vim.keymap.set('n', '<tab>', ':tabnext<Return>', { desc = 'Go to next tab' })
vim.keymap.set('n', '<s-tab>', ':tabprev<Return>', { desc = 'Go to previous tab' })
