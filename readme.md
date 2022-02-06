# Try the build

`make build` or `DOCKER_BUILDKIT=1 docker build . -t test/icu:latest`

For some reason **icu-dev** removes `/bin/sh` or somehow screws with the entry point of the image.
