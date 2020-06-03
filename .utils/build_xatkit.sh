# Build and start a Xatkit server for the GreetingsBot
# Print a message
e() {
    echo -e "$1"
}

main() {
	e "Started building Xatkit"
	pwd
	ll
    git submodule update --init --recursive
    ./build.sh --all --skip-tests --product
    e "Finished building Xatkit"
}

main
