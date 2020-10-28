# TESTING

## Local debug

```console
DEBUG=1 BASE=test/ ./json_syntax_check '\.json$'
```

## Docker test

```console
docker run --rm -it -v `pwd`/test/:/data/ json-syntax-check:latest '\.json$'
```
