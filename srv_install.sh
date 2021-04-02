#!/bin/bash

GAME_TITLE=$1
STEAM_ID=$2

mkdir /opt/steam/${GAME_TITLE}
./steamcmd.sh +login anonymous +force_install_dir /opt/steam/${GAME_TITLE} +app_update ${STEAM_ID} validate +quit