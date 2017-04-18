## MiniDLNA

MiniDLNA is a simple media server software, with the aim of being fully compliant with DLNA/UPnP-AV clients.

## MiniDLNA Docker Images

This image is based on Alpine Linux.

### Usage

Example:

    docker run -d --name minidlna \
      --net=host \
      -p 8200:8200 \
      -p 1900:1900/udp \
      -v <PATH_TO_MEDIA_DIR>:/media \
      martmaiste/minidlna


If you want to overwrite a config file:

    docker run -d --name minidlna \
      --net=host \
      -p 8200:8200 \
      -p 1900:1900/udp \
      -v <PATH_TO_MEDIA_DIR>:/media \
      -v <PATH_TO_CONFIG_DIR>/minidlna.conf:/etc/minidlna.conf \
      martmaiste/minidlna

### Credits
This project is fork of [geekduck/docker-minidlna](https://github.com/geekduck/docker-minidlna) with few minor changes to suite my personal preferences.
