vim.g.mapleader = ' '
vim.g.maplocalleader = ' '
vim.o.number = true
vim.o.backspace = '2'
vim.o.showcmd = true
vim.o.autowrite = true
vim.o.cursorline = true
vim.o.autoread = true
vim.o.undofile = true
vim.o.tabstop = 2
vim.o.shiftround = true
vim.o.shiftwidth = 2
vim.o.expandtab = true
vim.o.shell = "zsh"
vim.o.undodir = os.getenv("HOME") .. "/.local/share/nvim/undo"
vim.o.termguicolors = true
vim.cmd('syntax enable')

-- keymaps --

vim.api.nvim_set_keymap('n', '<leader>n', ':nohlsearch<CR>', {noremap = true, silent = true})
vim.api.nvim_set_keymap('n', 'j', 'gj', {noremap = true, silent = true})
vim.api.nvim_set_keymap('n', 'k', 'gk', {noremap = true, silent = true})
vim.api.nvim_set_keymap('n', '<Tab>', '>>',{noremap = true, silent = true})
vim.api.nvim_set_keymap('n', '<S-Tab>', '<<',{noremap = true, silent = true})

