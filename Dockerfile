FROM mcr.microsoft.com/devcontainers/typescript-node:1-20-bullseye AS base

ENV PNPM_HOME="/pnpm"
ENV PATH="$PNPM_HOME:$PATH"

RUN pnpm add -g pnpm