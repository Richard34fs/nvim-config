# Neovim Configuration

## Prerequisites
Before using this configuration, you need to ensure you have the correct version of Neovim installed. I am currently using the **v0.12 pre-release** (nightly version) specifically to test the newly implemented native package and plugin manager (`vim.pack.add`).

To get this specific version, you can install it via [bob-nvim](https://github.com/MordechaiHadad/bob) by running the following command:
```bash
bob install nightly

bob use nightly
```

## LSP Configuration

The Language Server Protocol (LSP) is fully configured in this setup using Mason. Currently, it is set up to automatically install and manage the `lua_ls` (Lua) and `ts_ls` (TypeScript) language servers.

## Plugins

Below is the list of all the plugins currently used in this configuration. For more detailed information, documentation, and specific settings, please visit their respective GitHub pages through the links provided:

### LSP & Completion

* [nvim-lspconfig](https://github.com/neovim/nvim-lspconfig)
* [mason.nvim](https://github.com/mason-org/mason.nvim)
* [mason-lspconfig.nvim](https://github.com/mason-org/mason-lspconfig.nvim)
* [LuaSnip](https://github.com/L3MON4D3/LuaSnip)
* [friendly-snippets](https://github.com/rafamadriz/friendly-snippets)
* [blink.cmp](https://github.com/Saghen/blink.cmp) - Autocompletion plugin

### UI & Utilities

* [solarized-osaka.nvim](https://github.com/craftzdog/solarized-osaka.nvim) - Color schem by Takuya Matsuyama 
* [nvim-treesitter](https://github.com/nvim-treesitter/nvim-treesitter) - Nvim Treesitter configurations and abstraction layer
* [plenary.nvim](https://github.com/nvim-lua/plenary.nvim) 
* [telescope.nvim](https://github.com/nvim-telescope/telescope.nvim) - Find, Filter, Preview, Pick
* [lualine.nvim](https://github.com/nvim-lualine/lualine.nvim) - A blazing fast and easy to configure neovim statusline plugin
* [indent-blankline.nvim](https://github.com/lukas-reineke/indent-blankline.nvim) - Indent guides
* [nvim-autopairs](https://github.com/windwp/nvim-autopairs) - Autopairs 
* [nvim-web-devicons](https://github.com/nvim-tree/nvim-web-devicons) - Provides Nerd Font icons
* [gitsigns.nvim](https://github.com/lewis6991/gitsigns.nvim) - Git integration for buffers
