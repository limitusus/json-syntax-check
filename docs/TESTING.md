# TESTING

## Local debug

```console
DEBUG=1 GITHUB_WORKSPACE=. BASE=test/ ./json_syntax_check '\.json$'
DEBUG=1 GITHUB_WORKSPACE=. BASE=test/ ./json_syntax_check 'ok_[0-9]+\.json$'
```

## Docker test

```console
docker run --rm -it -v $(pwd)/test/:/data/ json-syntax-check:latest '\.json$'
```
