FROM oven/bun:alpine
WORKDIR /app

# Install the opencode CLI globally
RUN bunx opencode serve