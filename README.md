# Docker signal handling

Run as "int":

    docker build -t test-sigint . && docker run --name int --rm test-sigint 4 ; echo "Exit code: $?"

Monitor and kill:

    docker ps
    docker kill -s INT int
    docker stop -t 8 int
