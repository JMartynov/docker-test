#!/bin/bash
# Startup script for Native Deployment

# Kill any existing process on port 8080
kill $(lsof -t -i :8080) 2>/dev/null || true

# Ensure virtual environment exists
if [ ! -d "venv" ]; then
    python3 -m venv venv
    source venv/bin/activate
    pip install -r requirements.txt
else
    source venv/bin/activate
fi

# Set environment variables
export DEPLOY_METHOD="Native"
export PORT=8080

# Start app
echo "Starting application on port $PORT..."
nohup python app.py > app.log 2>&1 &

# Wait for startup
sleep 3

# Check if running
if curl -s localhost:8080/health | grep -q "healthy"; then
    echo "Application started successfully!"
    echo "URL: http://localhost:8080"
else
    echo "Application failed to start. Check app.log for details."
    exit 1
fi
