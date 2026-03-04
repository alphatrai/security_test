# Use a lightweight base image
FROM alpine:latest

# Run as non-root user (InfoSec requirement)
RUN addgroup -g 1000 app && \
    adduser -u 1000 -G app -D -s /bin/sh app
USER app

# Command to keep container alive
CMD ["tail", "-f", "/dev/null"]
