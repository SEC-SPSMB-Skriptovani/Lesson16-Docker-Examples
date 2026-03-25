docker run -d \
  --name=plex \
  --net=host \
  -e PUID=1000 \
  -e PGID=1000 \
  -e TZ=Etc/UTC \
  -e VERSION=docker \
  -e PLEX_CLAIM= `#optional` \
  -v /home/student/plex/config:/config \
  -v /home/student/plex/tvseries:/tv \
  -v //home/student/plex/movies:/movies \
  --restart unless-stopped \
  lscr.io/linuxserver/plex:latest
