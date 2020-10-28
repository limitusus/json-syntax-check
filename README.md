# json-syntax-check

Simple JSON syntax checker

## Inputs

### `patterns`

**Required** file patterns to check syntax. Default is `['\.json$']`.

## Outputs

### `failed_files`

File names whose syntax check failed in JSON list format.

## Example

```yaml
uses: actions/json-syntax-check@v1
with:
  patterns:
    - '\.json$'
```
