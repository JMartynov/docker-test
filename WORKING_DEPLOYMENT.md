# Working Deployment

The application was successfully deployed using **Native Process Deployment** within the Jules VM.

## Successful Method: Native Process Deployment

### Why it was chosen
Native deployment was the most reliable method as it avoids the complexities and limitations of container runtimes and registry access within the restricted VM environment.

### Why Docker Failed
Docker deployment failed primarily due to **Docker Hub pull rate limits** (`429 Too Many Requests`). Since the VM is likely sharing an IP address that has already exceeded the unauthenticated pull limit, and there are no local base images available, Docker cannot build or run containers.

### VM Limitations
- **External Registry Access**: Blocked or rate-limited for unauthenticated users.
- **Installed Tools**: Missing `podman`, `buildah`, `nerdctl`.
- **System Permissions**: While sudo is available, Docker's reliance on external images makes it unusable without a local registry or pre-loaded images.

## Reproduction Instructions

### 1. Setup Environment
```bash
python3 -m venv venv
source venv/bin/activate
pip install -r requirements.txt
```

### 2. Start Application
```bash
export DEPLOY_METHOD="Native"
export PORT=8080
python app.py > app.log 2>&1 &
```

### 3. Verify
- Endpoint: `http://localhost:8080`
- Health: `http://localhost:8080/health`

```bash
curl http://localhost:8080
curl http://localhost:8080/health
```
