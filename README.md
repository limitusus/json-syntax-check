# json-syntax-check

Simple JSON syntax checker

## Inputs

### `pattern`

**Required** file pattern to check syntax. Default is `'\\.json$'`.

## Outputs

### `failed_files`

File names whose syntax check failed in JSON list format.

## Example

Your `.github/workflow/jsoncheck.yml` may look like:

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
      - uses: actions/checkout@v2
      - name: json-syntax-check
        uses: limitusus/json-syntax-check@v1
        with:
          pattern: "\\.json$"
```
