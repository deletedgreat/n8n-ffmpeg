FROM n8nio/n8n:latest

USER root

# Install core tools, FFmpeg, and yt-dlp
RUN apt-get update && \
    apt-get install -y ffmpeg curl ca-certificates && \
    curl -L https://github.com/yt-dlp/yt-dlp/releases/latest/download/yt-dlp -o /usr/local/bin/yt-dlp && \
    chmod a+rx /usr/local/bin/yt-dlp && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*

USER node
