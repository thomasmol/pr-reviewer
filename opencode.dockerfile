FROM oven/bun:alpine
WORKDIR /app

# ensure Bun's global binaries are on PATH
ENV PATH="/usr/local/bin:/root/.bun/bin:${PATH}"

# install the opencode CLI globally
RUN bun add -g opencode-ai@latest

# verify installation (optional)
RUN which opencode
RUN opencode --help || echo "Help command failed"
RUN opencode serve --help || echo "Serve help failed"

EXPOSE 4096

# start the API server
CMD ["opencode", "serve"]
