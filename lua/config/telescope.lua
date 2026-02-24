local builtin = require('telescope.builtin')

local function open_nvim_config()
  local config_path = vim.fn.stdpath('config')
  builtin.find_files({
    prompt_title = "< NVIM Config >",
    cwd = config_path
  })
end

vim.keymap.set('n', '<c-p>', builtin.find_files, {})
vim.keymap.set('n', '<Space><Space>', builtin.oldfiles, {})
vim.keymap.set('n', '<Space>fg', builtin.live_grep, {})
vim.keymap.set('n', '<Space>fh', builtin.help_tags, {})
vim.keymap.set('n', '<Space>cn', open_nvim_config, { noremap = true, silent = true })
