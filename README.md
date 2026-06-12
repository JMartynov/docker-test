# docker-test
Test deploy docker CI

## Running MongoDB in constrained Jules VM

To run MongoDB successfully in this environment, we use a Native Docker Engine with specific configurations to bypass kernel and registry restrictions.

### Quick Start
1. **Setup**: Run the setup script to configure Docker and install dependencies.
   ```bash
   ./setup.sh
   ```
2. **Start MongoDB**: Run the startup script to pull the image and start the container.
   ```bash
   ./start_mongodb.sh
   ```
3. **Verify**: Run the acceptance test.
   ```bash
   python3 mongodb-docker.acceptance.test.py
   ```

### Configuration Details
- **Registry**: Uses `public.ecr.aws` to avoid Docker Hub rate limits.
- **Storage Driver**: Uses `vfs` to avoid OverlayFS extraction issues.
- **Networking**: Disables `iptables` to avoid permission errors during daemon startup.
