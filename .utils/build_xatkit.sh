# Build and start a Xatkit server for the GreetingsBot
# Print a message
e() {
    echo -e "$1"
}

main() {
	e "Started building Xatkit"
	pwd
	ls -a
    git submodule update --init --recursive
    ls platforms
    ls platforms/xatkit-react-platform
    #./build.sh --all --skip-tests --product
    e "Finished building Xatkit"
}

main
