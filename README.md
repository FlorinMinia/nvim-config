# kickstart.nvim++

## Introduction

A starting point for Neovim that is based on the [kickstart.nvim](https://github.com/nvim-lua/kickstart.nvim) configuration with some personal improvements.

## Plugins

### Core

| Plugin | Description |
| --- | --- |
| [lazy.nvim](https://github.com/folke/lazy.nvim) | Plugin manager |
| [vim-sleuth](https://github.com/tpope/vim-sleuth) | Auto-detect tabstop and shiftwidth |

### LSP & Completion

| Plugin | Description |
| --- | --- |
| [nvim-lspconfig](https://github.com/neovim/nvim-lspconfig) | LSP configuration (gopls, pyright, lua_ls) |
| [mason.nvim](https://github.com/williamboman/mason.nvim) | Language server / tool installer |
| [mason-lspconfig.nvim](https://github.com/williamboman/mason-lspconfig.nvim) | Bridge between Mason and lspconfig |
| [mason-tool-installer.nvim](https://github.com/WhoIsSethDaniel/mason-tool-installer.nvim) | Auto-install Mason tools |
| [fidget.nvim](https://github.com/j-hui/fidget.nvim) | LSP progress indicator |
| [lazydev.nvim](https://github.com/folke/lazydev.nvim) | Lua LSP for Neovim config development |
| [nvim-cmp](https://github.com/hrsh7th/nvim-cmp) | Autocompletion engine |
| [LuaSnip](https://github.com/L3MON4D3/LuaSnip) | Snippet engine |
| [cmp-nvim-lsp](https://github.com/hrsh7th/cmp-nvim-lsp) | LSP completion source |
| [cmp-path](https://github.com/hrsh7th/cmp-path) | Path completion source |
| [cmp_luasnip](https://github.com/saadparwaiz1/cmp_luasnip) | Snippet completion source |

### Formatting & Linting

| Plugin | Description |
| --- | --- |
| [conform.nvim](https://github.com/stevearc/conform.nvim) | Formatter (stylua, isort, black) with format-on-save |
| [nvim-lint](https://github.com/mfussenegger/nvim-lint) | Linting (ruff for Python, golangci-lint for Go) |

### Navigation & Search

| Plugin | Description |
| --- | --- |
| [telescope.nvim](https://github.com/nvim-telescope/telescope.nvim) | Fuzzy finder for files, grep, LSP symbols, and more |
| [telescope-fzf-native.nvim](https://github.com/nvim-telescope/telescope-fzf-native.nvim) | FZF sorting algorithm for Telescope |
| [telescope-ui-select.nvim](https://github.com/nvim-telescope/telescope-ui-select.nvim) | Use Telescope for `vim.ui.select` |
| [flash.nvim](https://github.com/folke/flash.nvim) | Jump anywhere on screen with `s` |
| [oil.nvim](https://github.com/stevearc/oil.nvim) | File browser as a buffer |

### Git

| Plugin | Description |
| --- | --- |
| [gitsigns.nvim](https://github.com/lewis6991/gitsigns.nvim) | Git signs in gutter, hunk staging/reset, blame, diff |

### Syntax & Treesitter

| Plugin | Description |
| --- | --- |
| [nvim-treesitter](https://github.com/nvim-treesitter/nvim-treesitter) | Syntax highlighting, indentation, and folding |
| [nvim-treesitter-textobjects](https://github.com/nvim-treesitter/nvim-treesitter-textobjects) | Code-aware text objects (select/move by function, class) |

### UI & Appearance

| Plugin | Description |
| --- | --- |
| [tokyonight.nvim](https://github.com/folke/tokyonight.nvim) | Colorscheme (tokyonight-storm) |
| [which-key.nvim](https://github.com/folke/which-key.nvim) | Keybinding help popup |
| [mini.nvim](https://github.com/echasnovski/mini.nvim) | ai textobjects, surround, statusline, icons |
| [indent-blankline.nvim](https://github.com/lukas-reineke/indent-blankline.nvim) | Indentation guides |
| [nvim-web-devicons](https://github.com/nvim-tree/nvim-web-devicons) | File type icons (requires Nerd Font) |
| [todo-comments.nvim](https://github.com/folke/todo-comments.nvim) | Highlight TODO/FIXME/HACK in comments |

### Editing

| Plugin | Description |
| --- | --- |
| [nvim-autopairs](https://github.com/windwp/nvim-autopairs) | Auto-pair brackets, quotes, etc. |

## Installation

### Install Neovim

### Install External Dependencies

External Requirements:
- Basic utils: `git`, `make`, `unzip`, C Compiler (`gcc`)
- [ripgrep](https://github.com/BurntSushi/ripgrep#installation)
- Clipboard tool (xclip/xsel/win32yank or other depending on the platform)
- A [Nerd Font](https://www.nerdfonts.com/): optional, provides various icons
  - if you have it set `vim.g.have_nerd_font` in `init.lua` to true
- Language Setup:
  - If you want to write Golang, you will need `go`
  - If you want to write Python, you will need `python3`

### Clone and Install

Neovim's configurations are located under the following paths, depending on your OS:

| OS | PATH |
| :- | :--- |
| Linux, MacOS | `$XDG_CONFIG_HOME/nvim`, `~/.config/nvim` |
| Windows (cmd)| `%localappdata%\nvim\` |
| Windows (powershell)| `$env:LOCALAPPDATA\nvim\` |

```sh
git clone https://github.com/your-user/kickstart.nvim.git ~/.config/nvim
```

That's it! Lazy will install all the plugins you have. Use `:Lazy` to view
the current plugin status. Hit `q` to close the window.
