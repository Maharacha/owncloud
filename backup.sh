#!/bin/bash
docker-compose stop
sudo rsync -r /var/lib/docker/volumes/owncloud_redis /mnt/external/backup/owncloud
sudo rsync -r /var/lib/docker/volumes/owncloud_mysql /mnt/external/backup/owncloud
sudo rsync -r /var/lib/docker/volumes/owncloud_files /mnt/external/backup/owncloud
docker-compose start
