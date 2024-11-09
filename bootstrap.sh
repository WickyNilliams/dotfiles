#!/bin/zsh

# -D remove parsed args from $@
# -F fail on unknown
# -A use associative array `opts` for args
zparseopts -D -F -A opts -force -skip-brew -skip-git

function doIt() {
	if [[ -v opts[--skip-git] ]]; then
		echo "Skipping git"
	else
		echo "Pulling latest changes from git..."
		git pull origin master || exit 1
	fi

	if [[ -v opts[--skip-brew] ]]; then
		echo "Skipping brew"
	else
		echo "Installing packages from brew..."
		./brew.sh
	fi

	echo "Copying config files and folder to home dir..."
	cp .{gitconfig,zshrc,zprofile,zshenv} ~/
	cp -R .config ~/.config

	# see: https://github.com/sharkdp/bat?tab=readme-ov-file#adding-new-themes
	echo "Configuring bat..."
	bat cache --build
}

if [[ -v opts[--force] ]]; then
	doIt;
else
	read "REPLY?This may overwrite existing files in your home directory. Are you sure? (y/n) "
	echo "";
	if [[ $REPLY =~ ^[Yy]$ ]]; then
		doIt;
	fi;
fi;
unset doIt;