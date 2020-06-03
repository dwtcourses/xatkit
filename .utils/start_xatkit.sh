# Build and start a Xatkit server for the GreetingsBot
# Print a message
e() {
    echo -e "$1"
}

main() {
	e "Deploying GreetingsBot"
	pwd
    cd build/bin
    ./start-xatkit-linux.sh ../examples/GreetingsBots/GreetingsBot/GreetingsBot.properties &
}

main
