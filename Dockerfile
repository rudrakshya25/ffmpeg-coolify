FROM jrottenberg/ffmpeg:latest

# Add healthcheck that verifies ffmpeg is available
HEALTHCHECK --interval=30s --timeout=10s --start-period=5s --retries=3 \
    CMD ffmpeg -version || exit 1

ENTRYPOINT ["sleep", "infinity"]
