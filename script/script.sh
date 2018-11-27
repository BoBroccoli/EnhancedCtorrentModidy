#!/bin/bash
FILES=/home/bo/Downloads/ctorrent-dnh3.3.2/torrents/*.torrent
for f in $FILES
do
	ctorrent -s "$f-result" "$f" &
	sleep 20; kill $!
done
