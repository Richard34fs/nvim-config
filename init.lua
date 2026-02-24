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

--plugins
vim.pack.add({
--lsp
  { src = "https://github.com/neovim/nvim-lspconfig"},
  { src = "https://github.com/mason-org/mason.nvim"},
  { src = "https://github.com/mason-org/mason-lspconfig.nvim"},
  { src = "https://github.com/L3MON4D3/LuaSnip"},
  { src = "https://github.com/rafamadriz/friendly-snippets"},
  { src = "https://github.com/Saghen/blink.cmp"},

-- other plugins
  { src = "https://github.com/craftzdog/solarized-osaka.nvim"},
  { src = "https://github.com/nvim-treesitter/nvim-treesitter", run = ':TSUpdate'},
  { src = "https://github.com/nvim-lua/plenary.nvim"},
  { src = "https://github.com/nvim-telescope/telescope.nvim"},
  { src = "https://github.com/nvim-lualine/lualine.nvim"},
  { src = "https://github.com/lukas-reineke/indent-blankline.nvim"},
  { src = "https://github.com/windwp/nvim-autopairs", event = "insertenter"},
  { src = "https://github.com/nvim-tree/nvim-web-devicons"},
  { src = "https://github.com/norcalli/nvim-colorizer.lua"},
  { src = "https://github.com/lewis6991/gitsigns.nvim"},
})

--lsp config
require("mason").setup()
require("mason-lspconfig").setup({
  ensure_installed = {"lua_ls", "ts_ls"}
})

require("blink-cmp").setup({
  signature = { enabled = true },
  completion = {
		documentation = { auto_show = true, auto_show_delay_ms = 500 },
		menu = {
			auto_show = true,
			draw = {
				treesitter = { "lsp" },
				columns = { { "kind_icon", "label", "label_description", gap = 1 }, { "kind" } },
			},
		},
	},
})

require("luasnip.loaders.from_vscode").load()

--plugins configurations
require("config.solarized")
require("config.lualine")
require("config.telescope")
require("config.treesitter")
require("config.indent-blankline")
require("config.gitsigns")
require("config.autopairs")
require("config.colorizer")
