#!/bin/bash

# Run the server
python server.py &

# Wait for the server to start (adjust sleep duration if needed)
sleep 5

# Run fetch.py
python fetch.py

# Run start.py
python start.py
