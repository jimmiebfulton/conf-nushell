

def --env yd [...args] {
  let directory = (yazi --cwd-file /dev/stdout)
	if $directory != "" and $directory != $env.PWD {
		cd $directory
	}
}

# Delete current directory
def --env rd. [...args] {
  let parent = (pwd | path dirname)
  let directory = (pwd | path basename)
  cd $parent
  d rd $directory
}

def rd [...args] {
  d rd ...$args
}

def --env mcd [...args] {
  mkdir $args.0
  cd $args.0
}

def pbc [...args] {
  pbcopy < $args.0
}

# Open Intellij in current directory
def --env i. [...args] {
  idea .
}

# Open Intellij in current directory
def --env c. [...args] {
  idea .
}

