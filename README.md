# A jupyter server docker image for [Anglican](https://probprog.github.io/anglican/index.html).

Requires docker or podman.

To run the jupyter server, just execute `run.sh` (or run the commands below in your shell of choice)

```sh
docker build . -t anglican-jupyter
docker run --rm -p 8888:8888 -it anglican-jupyter
```

and connect with your jupyter client of choice to `127.0.0.1:8888`.

Note that this is only suitable for **local** development as any jupyter server authentication is disabled.
