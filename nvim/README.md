```
~/.config/nvim
├── init.lua
└── lua
    ├── config
    │   ├── lazy.lua       ← já faz o bootstrap do lazy.nvim e importa “plugins”
    │   ├── options.lua    ← vim.o, vim.opt, etc.
    │   ├── keymaps.lua    ← vim.keymap.set
    │   └── autocmds.lua   ← vim.api.nvim_create_autocmd
    └── plugins
        ├── ui.lua         ← plugins de UI, tema, statusline…
        ├── lsp.lua        ← LSP, completion, snippets…
        ├── treesitter.lua ← treesitter e configurações
        └── git.lua        ← integração com Git (fugitive, gitsigns…)

```
