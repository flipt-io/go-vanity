# Vanity Go Imports for Flipt

## Pre-Requisites

- [vangen](https://github.com/leighmcculloch/vangen) `go install 4d63.com/vangen@latest`

## Usage

1. Update `vangen.json` with the vanity import path and the repository URL.

Example:

```json
 {
    "prefix": "flipt",
    "url": "https://github.com/flipt-io/flipt",
    "source": {
    "home": "https://github.com/flipt-io/flipt",
    "dir": "https://github.com/flipt-io/flipt/tree/main{/dir}",
    "file": "https://github.com/flipt-io/flipt/blob/main{/dir}/{file}#L{line}"
    }
},
```

2. Commit the change to the `main` branch.

```shell
git add vangen.json
git commit -m "Add vanity import path"
git push origin main
```

3. Build, commit and push to the `public` branch.

```shell
git checkout public
git restore --source main vangen.json
vangen -out .
git commit -am "Update vanity go imports"
git push
```
