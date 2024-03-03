FROM mcr.microsoft.com/devcontainers/typescript-node:1-20-bullseye AS base

ENV PNPM_HOME="/pnpm"
ENV PATH="$PNPM_HOME:$PATH"

RUN mkdir -p /root/workspace /root/.vscode-server

RUN pnpm add -g pnpm vercel

CMD /bin/sh -c "while sleep 86000; do :; done"