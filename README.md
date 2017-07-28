
# Overview

Nim is a programming language with C's efficiency, Lisp's expressivenes, and Python's elegancy.

This is a [Alpine](https://www.alpinelinux.org) based [Docker](https://www.docker.com) images, which contains [Nim](https://nim-lang.org) compiler.

## Supported tags and respective `Dockerfile` links

-	[`0.17.0`, `latest` (*0.17.0/Dockerfile*)](https://github.com/xxlabaza/docker-nim/blob/master/Dockerfile)

## How to use this image

### Tags

Tags indicate Nim versions, for example, `xxlabaza/nim:0.17.0`.

### Usage

You could use this image for building your [Nim](https://nim-lang.org) projects:

```bash
$> docker run \
    --rm \
    -v '<path_to_your_nim_sources_folder>:/tmp/src' \
    -v '<path_to_compilation_destination>:/tmp/target' \
    xxlabaza/nim:0.17.0 \
    compile --define:release \
            --symbolFiles:off \
            --nimcache:/tmp/src/cache \
            --path:/tmp/src \
            --out:/tmp/target/<binary_name> \
            /tmp/src/<main_file>
```

## Supported Docker versions

This image is officially supported on Docker version 17.06.0.

Support for older versions (down to 1.6) is provided on a best-effort basis.

Please see [the Docker installation documentation](https://docs.docker.com/installation/) for details on how to upgrade your Docker daemon.

## User Feedback

### Issues

If you have any problems with or questions about this image, please contact me through a [GitHub issue](https://github.com/xxlabaza/docker-nim/issues).

### Contributing

You are invited to contribute new features, fixes, or updates, large or small; I am always thrilled to receive pull requests, and do my best to process them as fast as I can.

Before you start to code, I recommend discussing your plans through a [GitHub issue](https://github.com/xxlabaza/docker-nim/issues), especially for more ambitious contributions. This gives other contributors a chance to point you in the right direction, give you feedback on your design, and help you find out if someone else is working on the same thing.
