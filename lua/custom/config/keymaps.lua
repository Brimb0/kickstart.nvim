local map = vim.keymap.set


-- Clear search highlight with <Esc>
map('n', '<Esc>', '<cmd>nohlsearch<CR>')

-- Diagnostics
map('n', '<leader>q', vim.diagnostic.setloclist, { desc = 'Open Diagnostic Quick-fix List' })

-- Split Navigation
map('n', '<C-h>', '<C-w><C-h>', { desc = 'Move focus to the left window' })
map('n', '<C-l>', '<C-w><C-l>', { desc = 'Move focus to the right window' })
map('n', '<C-j>', '<C-w><C-j>', { desc = 'Move focus to the lower window' })
map('n', '<C-k>', '<C-w><C-k>', { desc = 'Move focus to the upper window' })

-- Move Lines
map('n', '<A-j>', '<cmd>m .+1<cr>==', { desc = 'Move Down' })
map('n', '<A-k>', '<cmd>m .-2<cr>==', { desc = 'Move Up' })
map('i', '<A-j>', '<esc><cmd>m .+1<cr>==gi', { desc = 'Move Down' })
map('i', '<A-k>', '<esc><cmd>m .-2<cr>==gi', { desc = 'Move Up' })
map('v', '<A-j>', ":m '>+1<cr>gv=gv", { desc = 'Move Down' })
map('v', '<A-k>', ":m '<-2<cr>gv=gv", { desc = 'Move Up' })

-- Move current line of text in normal mode
map('n', '<A-j>', "V :move '>+1<CR>gv-gv", { desc = 'Move text down by 1 line', silent = true })
map('n', '<A-k>', "V :move '<-2<CR>gv-gv", { desc = 'Move text up by 1 line', silent = true })

map('n', '<C-d>', '<C-d>zz', { desc = 'Go down further', silent = true })
map('n', '<C-u>', '<C-u>zz', { desc = 'Go up further', silent = true })

map('n', '<C-a>', 'gg<S-v>G', { desc = 'Select all text' })

-- Q is very grief in neovim
map('v', 'Q', '<nop>', { desc = 'Disable Q' })

-- Yank Modifications
-- map('n', 'x', '_x', { desc = 'Never Yank after deleting a character with x (Normal Mode)' })
-- map('n', 'X', '_X', { desc = 'Never Yank after deleting a character with X (Normal Mode)' })
-- map('v', 'x', '_x', { desc = 'Never Yank after deleting a character with x (Visual Mode)' })
-- map('v', 'X', '_X', { desc = 'Never Yank after deleting a character with X (Visual Mode)' })

-- Tabs
map('n', 'te', ':tabedit', { desc = 'Edit tab layout' })
map('n', '<tab>', ':tabnext<Return>', { desc = 'Go to next tab' })
map('n', '<s-tab>', ':tabprev<Return>', { desc = 'Go to previous tab' })

-- Window Resize
map('n', '<C-Left>', ':vertical resize -2<CR>', { desc = 'Decrease window width' }) -- Resize width -
map('n', '<C-Right>', ':vertical resize +2<CR>', { desc = 'Increase window width' }) -- Resize width +
map('n', '<C-Up>', ':resize -2<CR>', { desc = 'Decrease window height' }) -- Resize height -
map('n', '<C-Down>', ':resize +2<CR>', { desc = 'Increase window height' }) -- Resize height +

map('n', 'H', '^', { desc = 'Move to non-blank whitespace character' })

-- Don't yank on visual paste
-- map('v', 'p', '"_dP')

-- Don't yank on delete char
map('n', 'x', '"_x') -- silent
map('n', 'X', '"_X') -- silent
map('v', 'x', '"_x') -- silent
map('v', 'X', '"_X') -- silent

-- Better yank command
map('n', '<leader>y', '"+y')
map('v', '<leader>y', '"+y')
map('n', '<leader>Y', '"+Y')
map('v', '<leader>Y', '"+Y')

map('n', '<leader>tt', ':split<CR>')

-- Terminal
map('t', '<leader><ESC>', '<C-\\><C-n>', { desc = 'Exit Terminal' })
