# Docker restarter

Restarts docker instances based on inotifyd watched files.

## Usage

Ex. restarting portainer when certificate is updated:

```sh
docker run -d \
  -v /run/docker.sock:/run/docker.sock \
  -e CONTAINERS="portainer" \
  -v portainer_data:/data/portainer \
  korc/docker-restarter \
  /data/portainer/certs/cert.pem:w
```
