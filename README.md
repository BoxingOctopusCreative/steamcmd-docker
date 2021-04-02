# steamcmd-docker

## Table of Contents

- [About](#about)
- [Usage](#usage)
- [Contributing](../CONTRIBUTING.md)

## About <a name = "about"></a>

A Generic Docker/Docker Compose workflow for spinning up game servers which use Steam/SteamCMD.

## Getting Started <a name = "getting_started"></a>

These instructions will get you a copy of the project up and running.

### Prerequisites

* Docker
* Docker Compose

## Usage <a name = "usage"></a>

1. Add any additional config files to the `config` folder
2. Add any additional environment variables to `./config/config.env` (Sample provided)
3. Run `docker-compose up -d`

## Notes <a name = "notes"></a>

* This workflow includes additional support for shipping container logs to a remote syslog server. To enable this feature, instead of the default `docker-compose up -d` command, use the following command:
```bash
docker-compose -f docker-compose.yml -f syslog-support.yml up -d
```
Additionally, ensure that the `SYSLOG_SERVER_ADDRESS` environment variable is set in `./config/config.env`.
* The `game_server` container adds the `SYS_NICE` capability to ensure that the container runtime is able to give priority to the game server daemon, for added reliability/stability. If you notice general host system instability, comment or remove this from the `docker-compose.yml` and rebuild the container.
