# Troubleshooting MongoDB in Jules VM

## Common Issues

### 1. Docker Hub Rate Limits (HTTP 429)
The Jules VM often shares an IP that hits Docker Hub's unauthenticated pull limit.
**Solution**: Use an alternative registry like Public ECR: `public.ecr.aws/docker/library/mongo:latest`.

### 2. OverlayFS / Extraction Failures
Default Docker storage driver (`overlayfs`) may fail with `operation not permitted` when extracting certain layers (especially whiteout files).
**Solution**: Use the `vfs` storage driver. Configure this in `/etc/docker/daemon.json`.

### 3. Iptables / Networking
The VM may restrict Docker's ability to modify iptables.
**Solution**: Set `"iptables": false` in `/etc/docker/daemon.json`. Note that you may need to manually manage port access if other services are involved, but for localhost access it works.

### 4. Daemon Startup
If dockerd fails to start, check for stale PID files at `/var/run/docker.pid`.
**Solution**: `sudo rm /var/run/docker.pid` and restart.
