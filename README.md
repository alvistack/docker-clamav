# Docker Image Packaging for ClamAV

[![GitLab pipeline status](https://img.shields.io/gitlab/pipeline/alvistack/docker-clamav/master)](https://gitlab.com/alvistack/docker-clamav/-/pipelines)
[![GitHub release](https://img.shields.io/github/release/alvistack/docker-clamav.svg)](https://github.com/alvistack/docker-clamav/releases)
[![GitHub license](https://img.shields.io/github/license/alvistack/docker-clamav.svg)](https://github.com/alvistack/docker-clamav/blob/master/LICENSE)
[![Docker Pulls](https://img.shields.io/docker/pulls/alvistack/clamav-0.102.svg)](https://hub.docker.com/r/alvistack/clamav-0.102)

ClamAV is an open source antivirus engine for detecting trojans, viruses, malware & other malicious threats.

Learn more about ClamAV: <https://www.clamav.net/>

## Supported Tags and Respective Packer Template Links

  - [`alvistack/clamav-0.102`](https://hub.docker.com/r/alvistack/clamav-0.102)
      - [`packer/docker-0.102/packer.json`](https://github.com/alvistack/docker-clamav/blob/master/packer/docker-0.102/packer.json)

## Overview

This Docker container makes it easy to get an instance of clamav up and running.

Based on [Official Ubuntu Docker Image](https://hub.docker.com/_/ubuntu/) with some minor hack:

  - Packaging by Packer Docker builder and Ansible provisioner in single layer
  - Handle `ENTRYPOINT` with [catatonit](https://github.com/openSUSE/catatonit)

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

### `YYYYMMDD.Y.Z`

Release tags could be find from [GitHub Release](https://github.com/alvistack/docker-clamav/releases) of this repository. Thus using these tags will ensure you are running the most up to date stable version of this image.

### `YYYYMMDD.0.0`

Version tags ended with `.0.0` are rolling release rebuild by [GitLab pipeline](https://gitlab.com/alvistack/docker-clamav/-/pipelines) in weekly basis. Thus using these tags will ensure you are running the latest packages provided by the base image project.

## License

  - Code released under [Apache License 2.0](LICENSE)
  - Docs released under [CC BY 4.0](http://creativecommons.org/licenses/by/4.0/)

## Author Information

  - Wong Hoi Sing Edison
      - <https://twitter.com/hswong3i>
      - <https://github.com/hswong3i>
