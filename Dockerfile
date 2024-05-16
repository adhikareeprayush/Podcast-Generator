FROM ubuntu:latest

# Installation
RUN apt-get update && apt-get install -y \
    python3.10 \
    python3-pip \
    git && \
    pip3 install PyYAML

# Copy scripts
COPY feed.py /usr/bin/feed.py
COPY entrypoint.sh /entrypoint.sh

# Set entrypoint
ENTRYPOINT ["/entrypoint.sh"]
