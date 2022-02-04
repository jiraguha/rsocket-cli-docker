# rsocket-cli-docker

Docker files for [rsocket-cli](https://github.com/making/rsc) published on

---

## Run locally

To shell into the docker runtime:

```sh
$ docker run -it risecard/rsocket-cli:latest sh
```

## (optional) Add `rsocket-cli` alias to your shell

Alternatively, you can add `rsocket-cli` command to your shell init file (e.g.
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

