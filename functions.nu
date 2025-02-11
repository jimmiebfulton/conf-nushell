# Functions

# Select directory from Yazi
export def --env y [...args] {
  let directory = (yazi --cwd-file /dev/stdout)
	if $directory != "" and $directory != $env.PWD {
		cd $directory
	}
}

# Delete current directory
export def --env rd. [...args] {
  let parent = (pwd | path dirname)
  let directory = (pwd | path basename)
  cd $parent
  d rd $directory
}

# Remove one or more directories, safely
export def rd [...args] {
  d rd ...$args
}

# Make a directory and enter it
export def --env mcd [...args] {
  mkdir $args.0
  cd $args.0
}

# Add file to clipboard
export def pbc [...args] {
  pbcopy < $args.0
}

# Open Intellij in current directory
export def --env i. [...args] {
  idea .
}

# Open Intellij in current directory
export def --env c. [...args] {
  idea .
}

