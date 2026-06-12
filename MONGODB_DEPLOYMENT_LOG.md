# MongoDB Deployment Log

| Method | Approach | Status | Reason/Log |
|--------|----------|--------|------------|
| 1 | Native Docker | FAILED | Pull rate limit (429) for 'mongo:7' and 'mongo:latest'. Default 'overlayfs' fails to extract layers due to 'operation not permitted' on whiteout files in this VM. |
| 2 | Install Docker Engine | SUCCESS | Already installed (29.2.1), but required configuration (vfs, iptables:false). |
| 3 | Rootless Docker | SKIPPED | Native Docker worked with config. |
| 4 | Podman | FAILED | Rootless Podman failed due to missing subuid/subgid ranges. |
| 5 | nerdctl + containerd | SKIPPED | Native Docker worked with config. |
| 9 | Image Variants | SUCCESS | 'public.ecr.aws/docker/library/mongo:latest' successfully bypasses Docker Hub rate limits. |
| 10 | Resource Tuning | SUCCESS | Default settings worked once 'vfs' and 'iptables:false' were set. |

## Winning Approach
**Native Docker Engine** with **vfs** storage driver, **iptables: false**, and pulling from **Public ECR** to avoid rate limits.

## Reproduction Steps
1. Run `./setup.sh` (Installs pymongo, configures /etc/docker/daemon.json, restarts docker).
2. Run `./start_mongodb.sh` (Pulls image from ECR, starts container, waits for readiness).
3. Run `python3 mongodb-docker.acceptance.test.py` to verify.
