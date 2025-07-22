FROM oven/bun:alpine
WORKDIR /app

# Install the opencode CLI globally
RUN bun i -g opencode-ai@latest

# Expose the port the server listens on
EXPOSE 4096

# Launch the API server
CMD ["opencode", "serve"]