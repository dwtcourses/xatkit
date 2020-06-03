# Build and start a Xatkit server for the GreetingsBot
# Print a message
e() {
    echo -e "$1"
}

main() {
	e "Started building Xatkit"
    git submodule update --init --recursive
    ./build.sh --all --skip-tests --product > /dev/null
    e "Finished building Xatkit"
    pwd
    cd build/bin
    ./start-xatkit-linux.sh ../examples/GreetingsBots/GreetingsBot/GreetingsBot.properties > /dev/null
}

main
