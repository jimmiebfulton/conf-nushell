$env.STARSHIP_SHELL = "nu"
$env.STARSHIP_CONFIG = ($env.HOME | path join ".config/starship/starship.toml")

let INSERT_COLOR = '#689d6a'
let NORMAL_COLOR = '#3465A4'
let MULTI_COLOR = '#d65d0e'
let TEXT_COLOR = "#ffffff"
let INSERT = (ansi { fg: $TEXT_COLOR bg: $INSERT_COLOR attr: b })
let INSERT_INVERSE = (ansi {  fg: $INSERT_COLOR })
let NORMAL = (ansi { fg: $TEXT_COLOR bg: $NORMAL_COLOR attr: b })
let NORMAL_INVERSE = (ansi { fg: $NORMAL_COLOR })
let MULTI = (ansi { fg: $TEXT_COLOR bg: $MULTI_COLOR attr: b })
let MULTI_INVERSE = (ansi { fg: $MULTI_COLOR })
let RESET = (ansi reset)
let INDICATOR = ""

def create_left_prompt [] {
    starship prompt --cmd-duration $env.CMD_DURATION_MS $'--status=($env.LAST_EXIT_CODE)'
}

$env.PROMPT_COMMAND = { || create_left_prompt }
$env.PROMPT_COMMAND_RIGHT = ""
$env.PROMPT_INDICATOR = ""
$env.PROMPT_INDICATOR_VI_INSERT =  $"($INSERT) INSERT ($RESET)($INSERT_INVERSE)($INDICATOR)($RESET) "
$env.PROMPT_INDICATOR_VI_NORMAL = $"($NORMAL) NORMAL ($RESET)($NORMAL_INVERSE)($INDICATOR)($RESET) "
$env.PROMPT_MULTILINE_INDICATOR = $"($MULTI) MULTI ($RESET)($MULTI_INVERSE)($INDICATOR)($RESET) "
