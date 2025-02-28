# config.nu

$env.config.edit_mode = 'vi' 
$env.config.table.mode = 'compact'
$env.config.buffer_editor = "nvim"
$env.config.show_banner = false

$env.EDITOR = "nvim"
$env.CARAPACE_BRIDGES = 'zsh,fish,bash,inshellisense'

if ("~/.config/nushell/local.nu" | path exists) {
  source "~/.config/nushell/local.nu"
}

use ~/.config/nushell/path.nu *
use "~/.config/nushell/local.nu" *
use "~/.config/nushell/jj.nu" *
use ~/.config/nushell/prompt.nu *
use ~/.config/nushell/alias.nu *
use ~/.config/nushell/functions.nu *

source ~/.config/nushell/zoxide.nu
source ~/.config/nushell/carapace.nu

$env.LS_COLORS = (vivid generate one-dark)

