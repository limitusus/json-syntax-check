# json-syntax-check

Simple JSON syntax checker

## Inputs

### `pattern`

**Required** file pattern to check syntax. Default is `'\.json$'`.

## Outputs

### `failed_files`

File names whose syntax check failed in JSON list format.

## Example

```yaml
uses: actions/json-syntax-check@v1
with:
  pattern: '\.json$'
```
