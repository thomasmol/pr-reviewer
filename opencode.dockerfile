FROM oven/bun:alpine
WORKDIR /app

# ensure Bun's global binaries are on PATH
ENV PATH="/root/.bun/bin:${PATH}"

# install the opencode CLI globally
RUN bun add -g opencode-ai@latest

# verify installation (optional)
RUN which opencode

EXPOSE 4096

# start the API server
CMD ["/usr/local/bin/opencode", "serve"]
