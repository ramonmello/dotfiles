$env.config.buffer_editor = "nvim"
$env.config.show_banner = false

# XDG Base Directories
$env.XDG_CONFIG_HOME = ($env.HOME | path join ".config")
$env.XDG_DATA_HOME = ($env.HOME | path join ".local/share")
$env.XDG_CACHE_HOME = ($env.HOME | path join ".cache")
$env.XDG_STATE_HOME = ($env.HOME | path join ".local/state")

# Environment
$env.EDITOR = "nvim"
$env.SHELL = "/opt/homebrew/bin/nu"
$env.N_PREFIX = $"($env.HOME)/n"

# PATH
let extra_paths = [
  "/opt/homebrew/bin",
  $"($env.HOME)/n/bin",
  "/usr/local/go/bin",
  $"($env.HOME)/.cargo/bin",
  $"($env.HOME)/.local/bin"
]

$env.Path = ($env.Path | prepend $extra_paths)

# Zoxide
zoxide init nushell | save -f ~/.zoxide.nu
