source ~/.local/share/atuin/init.nu

# Aliases
alias nv = nvim
alias obsidian = cd ($env.HOME | path join "Library/Mobile Documents/iCloud~md~obsidian/Documents")

def --wrapped theme [...args] {
	let config_script = ($env.XDG_CONFIG_HOME | path join "scripts/theme")
	let dotfiles_script = ($env.HOME | path join "dotfiles/scripts/theme")
	let script = if ($config_script | path exists) { $config_script } else { $dotfiles_script }
	^$script ...$args
}

# Yazi
def --env y [...args] {
	let tmp = (mktemp -t "yazi-cwd.XXXXXX")
	yazi ...$args --cwd-file $tmp
	let cwd = (open $tmp)
	if $cwd != "" and $cwd != $env.PWD {
		cd $cwd
	}
	rm -fp $tmp
}

# Settings to starship
mkdir ($nu.data-dir | path join "vendor/autoload")
starship init nu | save -f ($nu.data-dir | path join "vendor/autoload/starship.nu")

# Zoxide
source ~/.zoxide.nu
