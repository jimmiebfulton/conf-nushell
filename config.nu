# config.nu

$env.config.edit_mode = 'vi' 
$env.config.buffer_editor = "nvim"
$env.config.show_banner = false

$env.EDITOR = "nvim"

# Path

$env.PATH = ($env.PATH | append '/opt/homebrew/bin/')
$env.PATH = ($env.PATH | append ($env.HOME | path join 'bin'))
$env.PATH = ($env.PATH | append ($env.HOME | path join '.cargo/bin'))

if ("/Applications/Araxis Merge.app" | path exists) {
  $env.PATH = ($env.PATH | append "/Applications/Araxis Merge.app/Contents/Utilities/")
}

if ("/opt/homebrew/opt/llvm" | path exists) {
  $env.PATH = ($env.PATH | append "/opt/homebrew/opt/llvm/bin/")
}

if ("/usr/local/go/bin" | path exists) {
  $env.PATH = ($env.PATH | append "/usr/local/go/bin")
}

if ("~/go" | path exists) {
  $env.PATH = ($env.PATH | append "~/go/bin/")
}

if ("~/.config/nushell/local.nu" | path exists) {
  source "~/.config/nushell/local.nu"
}

use ~/.config/nushell/prompt.nu *
use ~/.config/nushell/path.nu *
use ~/.config/nushell/alias.nu *
use ~/.config/nushell/functions.nu *

source ~/.config/nushell/zoxide.nu
