FROM docker.io/oven/bun:debian

COPY . .
# Installing with `bun install --backend copyfile` works ok!
RUN bun install --backend copyfile

RUN ls -al /root/.bun/install/cache/@tanstack/
RUN ls -al /root/.bun/install/cache/@tanstack/router-vite-plugin/
RUN ls -al /root/.bun/install/cache/@tanstack/router-vite-plugin/1.3.3/
RUN ls -al /root/.bun/install/cache/@tanstack/router-vite-plugin/1.3.3/build/
RUN ls -al /root/.bun/install/cache/@tanstack/router-vite-plugin/1.3.3/build/cjs/
# Vendored node_modules correctly in place in bun install cache
RUN ls -al /root/.bun/install/cache/@tanstack/router-vite-plugin/1.3.3/build/cjs/node_modules
RUN ls -al /root/.bun/install/cache/@tanstack/router-vite-plugin/1.3.3/build/cjs/node_modules/.pnpm

RUN ls -al ./node_modules/@tanstack/router-vite-plugin/build/cjs/

# FAILS node_modules not present
RUN ls -al ./node_modules/@tanstack/router-vite-plugin/build/cjs/node_modules
