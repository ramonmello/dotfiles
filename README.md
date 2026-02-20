# dotfiles

Personal configurations managed with [GNU Stow](https://www.gnu.org/software/stow/), focused on a modern terminal-based development environment.

## Structure

```
dotfiles/
├── atuin/          # Command history manager
├── ghostty/        # Terminal emulator
├── nushell/        # Modern shell
├── nvim/           # Text editor
├── tmux/           # Terminal multiplexer
├── yazi/           # Terminal file manager
└── starship.toml   # Shell prompt
```

## Installation

```sh
git clone <repo> ~/dotfiles
cd ~/dotfiles
stow .
```

The `.stowrc` file configures Stow to create symlinks in `~/.config`.

---

## Tools

### [Ghostty](https://ghostty.org) — Terminal

GPU-accelerated terminal emulator.

- **Shell**: Nushell (`/opt/homebrew/bin/nu`)
- **Font**: DankMono Nerd Font, 15pt
- **Window**: 169 columns × 50 rows
- **Background**: 90% opacity with 50px blur
- **Theme**: Catppuccin Mocha (manually defined as a palette)

---

### [Nushell](https://www.nushell.sh) — Shell

Modern shell written in Rust, with structured data as output.

#### `env.nu` — Environment

- Sets XDG base directory variables (`XDG_CONFIG_HOME`, `XDG_DATA_HOME`, etc.)
- Sets the default editor to Neovim
- Adds to PATH: Homebrew, Go, Rust, n (Node version manager), local binaries
- Initializes [Zoxide](https://github.com/ajeetdsouza/zoxide) for fast directory jumping

#### `config.nu` — Configuration

- Alias `nv` → `nvim`
- Function `y` to open Yazi and `cd` to the selected directory on exit
- Initializes Starship as the prompt
- Initializes Atuin for command history

---

### [Starship](https://starship.rs) — Prompt

Fast, customizable cross-shell prompt.

- **Palette**: Catppuccin Mocha
- **Left prompt**: current directory + input character
- **Right prompt**: git status, AWS profile, Go version
- Minimal design with no extra newline after the prompt

---

### [Atuin](https://atuin.sh) — History

Replaces the default shell history with fuzzy search, sync, and statistics.

- `enter_accept = true`: executes the selected command immediately on Enter
- Database: `~/.local/share/atuin/history.db`

---

### [Neovim](https://neovim.io) — Editor

Built on top of [LazyVim](https://lazyvim.org), which provides a pre-configured plugin base.

```
nvim/
├── init.lua                 # Entry point — bootstraps lazy.nvim
├── lazy-lock.json           # Plugin lockfile
├── lazyvim.json             # Enabled LazyVim extras
├── stylua.toml              # Lua formatter config
└── lua/
    ├── config/
    │   ├── lazy.lua         # Plugin manager setup
    │   ├── options.lua      # Editor options
    │   ├── keymaps.lua      # Custom keybindings
    │   └── autocmds.lua     # Reloads buffers on external file changes
    └── plugins/
        ├── colorscheme.lua  # Catppuccin Mocha with transparent background
        └── treesitter-context.lua  # Shows current block context at the top
```

- **Theme**: Catppuccin Mocha with transparent background
- **Disabled built-ins**: gzip, tarPlugin, tohtml, tutor, zipPlugin

---

### [Tmux](https://github.com/tmux/tmux) — Terminal Multiplexer

Split the terminal into panes and windows, and keep persistent sessions.

#### `tmux.conf` — Main config

- Status bar at the top
- Window index starts at 1
- Mouse support enabled
- Scrollback history: 50,000 lines
- Theme: Catppuccin Mocha (via plugin)
- Plugin manager: TPM

#### `tmux.remap.conf` — Key bindings

| Key                   | Action                              |
| --------------------- | ----------------------------------- |
| `H` / `L`             | Switch to previous/next window      |
| `h` / `j` / `k` / `l` | Navigate between panes             |
| `v`                   | Split pane vertically               |
| `s`                   | Split pane horizontally             |
| `S` / `W`             | Select session / window             |
| `*`                   | Synchronize input across all panes  |
| Copy mode             | Vi-style bindings                   |

---

### [Yazi](https://yazi-rs.github.io) — File Manager

Fast terminal file manager with file previews.

- **Hidden files**: shown by default
- **Theme**: Catppuccin Mocha with icons for 400+ file extensions and 300+ specific filenames

---

## Theme: Catppuccin Mocha

All tools share the same [Catppuccin Mocha](https://github.com/catppuccin/catppuccin) color scheme:

| Color        | Hex       |
| ------------ | --------- |
| Base (bg)    | `#1e1e2e` |
| Text         | `#cdd6f4` |
| Blue         | `#89b4fa` |
| Green        | `#a6e3a1` |
| Red          | `#f38ba8` |
| Yellow       | `#f9e2af` |
| Pink         | `#f5c2e7` |
| Teal         | `#94e2d5` |
