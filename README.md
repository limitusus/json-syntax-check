# json-syntax-check

Simple JSON syntax checker

![OK case test passing](https://github.com/limitusus/json-syntax-check/actions/workflows/oktest.yml/badge.svg)
![NG case test passing](https://github.com/limitusus/json-syntax-check/actions/workflows/ngtest.yml/badge.svg)
![rubocop passing](https://github.com/limitusus/json-syntax-check/actions/workflows/rubocop.yml/badge.svg)

![Ruby 3](https://img.shields.io/badge/Ruby-3-yellow)

## Inputs

### `pattern`

**Required** file pattern to check syntax. Default is `'\\.json$'`.

## Environment variables

### `BASE`

*Optional* base directory in which to look for files matching `pattern`.

If `BASE` is not set, json-syntax-check will look in `GITHUB_WORKSPACE`.

## Outputs

### `failed_files`

File names whose syntax check failed in JSON list format.

## Example

Your `.github/workflows/jsoncheck.yml` may look like:

```yaml
name: JSON check

on:
  push:
    paths:
      - '**.json'
  pull_request:

jobs:
  test:
    runs-on: ubuntu-latest
    steps:
      - uses: actions/checkout@v5
      - name: json-syntax-check
        uses: limitusus/json-syntax-check@v2
        with:
          pattern: "\\.json$"
```
