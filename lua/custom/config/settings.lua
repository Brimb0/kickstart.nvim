-- GLOBALS --
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1
vim.g.mapleader = ' '
vim.g.maplocalleader = ' '
vim.g.have_nerd_font = true
vim.g.termguicolors = true
vim.g.loaded_ruby_provider = 0
vim.g.loaded_node_provider = 0
vim.g.loaded_perl_provider = 0
vim.g.loaded_python3_provider = 0

-- Options --
vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.textwidth = 80
vim.opt.colorcolumn = '80'
vim.opt.mouse = 'a'
vim.opt.showmode = false
vim.opt.wrap = false
vim.opt.swapfile = false
vim.opt.tabstop = 8
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 8

-- Sync clipboard between OS and Neovim.
--  Schedule the setting after `UiEnter` because it can increase startup-time.
--  Remove this option if you want your OS clipboard to remain independent.
--  See `:help 'clipboard'`
vim.schedule(function()
  vim.opt.clipboard = 'unnamedplus'
end)
-- vim.opt.smartindent = true
-- vim.opt.autoindent = true
vim.opt.cindent = true
-- vim.opt.breakindent = true
vim.opt.undofile = true
vim.opt.ignorecase = true
vim.opt.smartcase = true
vim.opt.signcolumn = 'yes'
vim.opt.updatetime = 250
vim.opt.timeoutlen = 300
vim.opt.splitright = true
vim.opt.splitbelow = true
vim.opt.inccommand = 'split'
vim.opt.cursorline = true
vim.opt.scrolloff = 20

-- Decrease cmdheight, to remove Press Enter prompt
vim.opt.cmdheight = 0

-- Disable unused providers
vim.g.loaded_perl_provider = 0
vim.g.loaded_ruby_provider = 0
vim.g.loaded_node_provider = 0
vim.g.loaded_python_provider = 0
vim.g.loaded_python3_provider = 0

vim.opt.wildmode = 'list:longest,list:full'
vim.opt.wildmenu = true
vim.opt.wildignorecase = true
-- ignore files vim doesnt use
vim.opt.wildignore:append '.git,.hg,.svn'
vim.opt.wildignore:append '.aux,*.out,*.toc'
vim.opt.wildignore:append '.o,*.obj,*.exe,*.dll,*.manifest,*.rbc,*.class'
vim.opt.wildignore:append '.ai,*.bmp,*.gif,*.ico,*.jpg,*.jpeg,*.png,*.psd,*.webp'
vim.opt.wildignore:append '.avi,*.divx,*.mp4,*.webm,*.mov,*.m2ts,*.mkv,*.vob,*.mpg,*.mpeg'
vim.opt.wildignore:append '.mp3,*.oga,*.ogg,*.wav,*.flac'
vim.opt.wildignore:append '.eot,*.otf,*.ttf,*.woff'
vim.opt.wildignore:append '.doc,*.pdf,*.cbr,*.cbz'
vim.opt.wildignore:append '.zip,*.tar.gz,*.tar.bz2,*.rar,*.tar.xz,*.kgb'
vim.opt.wildignore:append '.swp,.lock,.DS_Store,._*'
vim.opt.wildignore:append '.,..'
