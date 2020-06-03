# Build and start a Xatkit server for the GreetingsBot
# Print a message
e() {
    echo -e "$1"
}

main() {

    git submodule update --init --recursive
    build.sh --all --skip-tests --product > /dev/null
    cd /build/bin
    ./start-xatkit-linux.sh ../examples/GreetingsBots/GreetingsBot/GreetingsBot.properties > /dev/null
}

main
