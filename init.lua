vim.g.mapleader = " "

--plugins
vim.pack.add{
  --lsp
  { src = "https://github.com/mason-org/mason.nvim" },
        { src = "https://github.com/neovim/nvim-lspconfig" },
        { src = "https://github.com/mason-org/mason-lspconfig.nvim" },
  --
  { src = "https://github.com/craftzdog/solarized-osaka.nvim" },
  { src = "https://github.com/windwp/nvim-autopairs" },
  { src = "https://github.com/lewis6991/gitsigns.nvim" },
  { src = "https://github.com/lukas-reineke/indent-blankline.nvim" },
}

require("options")
require("lsp")
require("colorscheme")
require("netrw") -- leader e
require("find") --:find
require("grep") -- leader g
require("keymaps")

--
require('ibl').setup()
require('nvim-autopairs').setup {}
require('gitsigns').setup()
