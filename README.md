# Docker Image Packaging for ClamAV

[![Travis](https://img.shields.io/travis/alvistack/docker-clamav.svg)](https://travis-ci.org/alvistack/docker-clamav)
[![GitHub release](https://img.shields.io/github/release/alvistack/docker-clamav.svg)](https://github.com/alvistack/docker-clamav/releases)
[![GitHub license](https://img.shields.io/github/license/alvistack/docker-clamav.svg)](https://github.com/alvistack/docker-clamav/blob/master/LICENSE)
[![Docker Pulls](https://img.shields.io/docker/pulls/alvistack/clamav.svg)](https://hub.docker.com/r/alvistack/clamav/)

ClamAV is an open source antivirus engine for detecting trojans, viruses, malware & other malicious threats.

Learn more about ClamAV: <https://www.clamav.net/>

## Supported Tags and Respective `Dockerfile` Links

  - [`latest` (master/Dockerfile)](https://github.com/alvistack/docker-clamav/blob/master/Dockerfile)
  - [`0.100` (0.100/Dockerfile)](https://github.com/alvistack/docker-clamav/blob/0.100/Dockerfile)

## Overview

This Docker container makes it easy to get an instance of clamav up and running.

### Quick Start

Start clamav:

    # Pull latest image
    docker pull alvistack/clamav

    # Run as detach
    docker run \
        -itd \
        --rm \
        --name clamav \
        --volume /var/lib/clamav:/var/lib/clamav \
        --volume /host-fs:/host-fs \
        alvistack/clamav

**Success**. clamav is now scanning your host directory `/host-fs`.

## Versioning

The `latest` tag matches the most recent version of this repository. Thus using `alvistack/clamav:latest` or `alvistack/clamav` will ensure you are running the most up to date version of this image.

## License

  - Code released under [Apache License 2.0](LICENSE)
  - Docs released under [CC BY 4.0](http://creativecommons.org/licenses/by/4.0/)

## Author Information

  - Wong Hoi Sing Edison
      - <https://twitter.com/hswong3i>
      - <https://github.com/hswong3i>
