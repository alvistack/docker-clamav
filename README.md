# Docker Image Packaging for ClamAV

[![Travis](https://img.shields.io/travis/alvistack/docker-clamav.svg)](https://travis-ci.org/alvistack/docker-clamav)
[![GitHub release](https://img.shields.io/github/release/alvistack/docker-clamav.svg)](https://github.com/alvistack/docker-clamav/releases)
[![GitHub license](https://img.shields.io/github/license/alvistack/docker-clamav.svg)](https://github.com/alvistack/docker-clamav/blob/master/LICENSE)
[![Docker Pulls](https://img.shields.io/docker/pulls/alvistack/clamav.svg)](https://hub.docker.com/r/alvistack/clamav/)

ClamAV is an open source antivirus engine for detecting trojans, viruses, malware & other malicious threats.

Learn more about ClamAV: <https://www.clamav.net/>

## Supported Tags and Respective `Dockerfile` Links

  - [`0.102`, `latest`](https://github.com/alvistack/docker-clamav/blob/master/molecule/0.102/Dockerfile.j2)

## Overview

This Docker container makes it easy to get an instance of clamav up and running.

Based on [Official Ubuntu Docker Image](https://hub.docker.com/_/ubuntu/) with some minor hack:

  - Minimized `Dockerfile` for meta data definition
  - Provision by Ansible and Molecule Docker driver in single layer
  - Handle `ENTRYPOINT` with [tini](https://github.com/krallin/tini)

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

### `alvistack/clamav:latest`

The `latest` tag matches the most recent [GitHub Release](https://github.com/alvistack/docker-clamav/releases) of this repository. Thus using `alvistack/clamav:latest` or `alvistack/clamav` will ensure you are running the most up to date stable version of this image.

### `alvistack/clamav:<version>`

The version tags are rolling release rebuild by [Travis](https://travis-ci.org/alvistack/docker-clamav) in weekly basis. Thus using these tags will ensure you are running the latest packages provided by the base image project.

## License

  - Code released under [Apache License 2.0](LICENSE)
  - Docs released under [CC BY 4.0](http://creativecommons.org/licenses/by/4.0/)

## Author Information

  - Wong Hoi Sing Edison
      - <https://twitter.com/hswong3i>
      - <https://github.com/hswong3i>
