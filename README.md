# Docker signal handling

Build:

    docker build -t test-sigint .

Run as "int":

    docker run --name int --rm test-sigint 4
    echo "Exit code: $?"

or in the background:

    docker run --name int -d test-sigint 4

Monitor and kill:

    docker ps
    docker kill -s INT int
    docker stop -t 8 int
