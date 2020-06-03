# Build and start a Xatkit server for the GreetingsBot
# Print a message
e() {
    echo -e "$1"
}

main() {

    pwd
    echo $XATKIT_DEV
    git submodule update --init --recursive
    ./build.sh --all --skip-tests --product
    cd build/bin
    ./start-xatkit-linux.sh ../examples/GreetingsBots/GreetingsBot/GreetingsBot.properties > /dev/null
}

main
