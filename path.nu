
export-env {
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

  if ("~/.local/bin" | path exists) {
    $env.PATH = ($env.PATH | append "~/.local/bin/")
  }

  if ("~/.rd/" | path exists) {
      $env.PATH = ($env.PATH | append "~/.rd/bin")
  }
}

