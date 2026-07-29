# Neovim Config Reference

## Leader Key

`<Space>`

## Editor Settings

| Setting | Value |
|---------|-------|
| `expandtab` | spaces over tabs |
| `ignorecase` | case-insensitive search |
| `smartcase` | smart case search |
| `tabstop` | 2 |
| `softtabstop` | 2 |
| `shiftwidth` | 2 |
| `textwidth` | 0 (no auto-wrap) |
| `clipboard` | `unnamedplus` (system clipboard) |

## Plugins

| Plugin | Purpose |
|--------|---------|
| `rebelot/kanagawa.nvim` | Colorscheme (active) |
| `catppuccin/nvim` | Colorscheme (optional, switch in `colourschemes.lua`) |
| `nvim-treesitter/nvim-treesitter` | Syntax highlighting + indentation |
| `ibhagwan/fzf-lua` | Fuzzy finder |
| `nvim-neo-tree/neo-tree.nvim` | File tree explorer |
| `nvim-lualine/lualine.nvim` | Statusline |
| `lewis6991/gitsigns.nvim` | Git signs in gutter |
| `sindrets/diffview.nvim` | Git diff viewer |
| `brianhuster/live-preview.nvim` | Live HTML preview |
| `williamboman/mason.nvim` | LSP/DAP/linter installer |
| `neovim/nvim-lspconfig` | LSP client configuration |
| `williamboman/mason-lspconfig.nvim` | Bridge between mason and lspconfig |
| `hrsh7th/nvim-cmp` | Completion engine |
| `hrsh7th/cmp-nvim-lsp` | LSP completion source |
| `hrsh7th/cmp-buffer` | Buffer word completion |
| `hrsh7th/cmp-path` | File path completion |
| `nvim-lua/plenary.nvim` | Utility library (dependency) |
| `nvim-tree/nvim-web-devicons` | File icons (dependency) |
| `MunifTanjim/nui.nvim` | UI component library (dependency) |

## LSP Commands

| Command | Description |
|---------|-------------|
| `:checkhealth vim.lsp` | Show active/configured servers |
| `:lsp enable <name>` | Start a server |
| `:lsp disable <name>` | Stop a server |
| `:lsp restart <name>` | Restart a server |
| `:lua for _, c in ipairs(vim.lsp.get_clients()) do print(c.name) end` | List running servers |

## LSP Servers

Auto-installed via Mason, starts on root marker detection:

`lua_ls` · `pyright` · `rust_analyzer` · `ts_ls` · `jsonls` · `cssls` · `html` · `svelte` · `clangd` · `gopls`

## Keymaps

### General

| Mode | Key | Action |
|------|-----|--------|
| `n` | `<leader><leader>` | Clear search highlight (`:nohlsearch`) |
| `n` | `<leader>r` | Toggle relative numbers |

### LSP & Diagnostics

Applies to buffers with an attached LSP server.

| Mode | Key | Action |
|------|-----|--------|
| `n` | `gd` | Go to definition |
| `n` | `K` | Hover documentation |
| `n` | `gr` | Show references |
| `n` | `<leader>ca` | Code action |
| `n` | `<leader>rn` | Rename symbol |
| `n` | `[d` | Previous diagnostic |
| `n` | `]d` | Next diagnostic |
| `n` | `<leader>e` | Open diagnostic float |
| `n` | `<leader>q` | Send diagnostics to loclist |

### Completion

Insert mode only. Manually triggered.

| Mode | Key | Action |
|------|-----|--------|
| `i` | `<C-Space>` | Trigger completion |
| `i` | `<C-n>` | Select next item |
| `i` | `<C-p>` | Select previous item |
| `i` | `<CR>` | Confirm selection |
| `i` | `<C-e>` | Cancel/abort |

### Fuzzy Finder

| Mode | Key | Action |
|------|-----|--------|
| `n` | `<C-f>` | Search files (`:FzfLua files`) |
| `n` | `<C-b>` | Search buffers (`:FzfLua buffers`) |

### File Tree

| Mode | Key | Action |
|------|-----|--------|
| `n` | `<C-n>` | Toggle file tree (`:Neotree filesystem reveal toggle`) |

### Git

| Mode | Key | Action |
|------|-----|--------|
| `n` | `<leader>gdo` | Open diff view (`:DiffviewOpen`) |
| `n` | `<leader>gdc` | Close diff view (`:DiffviewClose`) |

### Terminal

| Mode | Key | Action |
|------|-----|--------|
| `t` | `<C-Space>` | Exit terminal mode (go to normal mode) |

## Custom Commands

| Command | Description |
|---------|-------------|
| `:Shell [name]` | Open terminal in a split. Optionally name the buffer. |
| `:Gemini` | Open terminal named `gemini` running `gemini` |
| `:Opencode` | Open terminal named `opencode` running `opencode` |
| `:Mason` | Open Mason LSP/DAP/linter installer |
| `:FzfLua files` | Search project files |
| `:FzfLua buffers` | Search open buffers |
| `:Neotree filesystem reveal toggle` | Toggle file tree |
| `:DiffviewOpen` / `:DiffviewClose` | Open/close git diff view |

## Autocommands

| Event | Pattern | Action |
|-------|---------|--------|
| `FileType` | `*` | Remove `c`, `r`, `o` from `formatoptions` (disable auto-comment continuation) |
| `BufEnter`, `WinEnter`, `TermOpen` | `*` | Enable `number` + `relativenumber` on normal buffers; disable on special buffers |
| `BufLeave`, `WinLeave` | `*` | Disable relative numbers |
| `TextYankPost` | — | Highlight yanked text for 300ms |
| `LspAttach` | — | Set up LSP keymaps on buffer |

## Highlight Groups

| Group | Properties |
|-------|------------|
| `YankHighlight` | Derived from `Visual` group (used by yank highlighting) |

## Color Scheme

`kanagawa` (set in `lua/plugins/colourschemes.lua` — switch between kanagawa/catppuccin by changing the return value)
