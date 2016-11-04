SDIR=$(readlink -m $(dirname $0))

function ensure_dir_and_link() {
	DDIR=$1
	src="$SDIR/$name"

	name=$(echo $2 | sed 's/^dot_/./')
	dst="$DDIR/$name"

	if [ -f "$dst" ] ; then
		echo "$dst exists, skipping"
		return
	elif [ ! -f "$src" ] ; then
		echo > /dev/stderr "Error: Missing file $src"
		return
	else
		echo "Linking $name to $dst"
	fi
	mkdir -p "$DDIR"
	ln -s "$src" "$dst"
}

ensure_dir_and_link $HOME/.config/nvim init.vim
ensure_dir_and_link $HOME dot_gitconfig
