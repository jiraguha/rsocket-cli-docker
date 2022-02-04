# rsocket-cli-docker

Docker files for [rsocket-cli](https://github.com/making/rsc) published on

---

## Run locally

To start the `deno` repl:

```sh
$ docker run -it risecard/rsocket-cli:latest repl
```

To shell into the docker runtime:

```sh
$ docker run -it risecard/rsocket-cli:latest sh
```

## (optional) Add `deno` alias to your shell

Alternatively, you can add `deno` command to your shell init file (e.g.
`.bashrc`):

```sh
rsocket-cli () {
  docker run \
    --interactive \
    --tty \
    --rm \
    risecard/rsocket-cli:latest \
    "$@"
}
```

and in your terminal

```sh
$ source ~/.bashrc
$ rsocket-cli --version
$ rsocket-cli 
```

