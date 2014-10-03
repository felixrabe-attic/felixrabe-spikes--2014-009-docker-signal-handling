# Docker signal handling

## Caveat (aka Known Issues)

Whereas this works, [wait-for-signals-2.sh](./wait-for-signals-2.sh) (commented out as `ENTRYPOINT` in [Dockerfile](./Dockerfile)) will not react to signals. See [related Docker issues](https://github.com/docker/docker/issues?q=is%3Aopen+is%3Aissue+signal).

## How to run this spike

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
