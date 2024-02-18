# bun-issue-8093

Run

```sh
docker build -f Dockerfile --progress=plain .
```

for seeing the issue. The build should pass.

## Further Info

Installing with `bun install --backend copyfile` works ok on Linux. So the other backend methods
seem to be affected.
