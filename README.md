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

[Automation](https://github.com/flipt-io/go-vanity/blob/main/.github/workflows/deploy.yml) should take over from here and push up to our GitHub Pages branch `public`.

You can also manually build and deploy if necessary, following the steps below.

## Manual Deploy

Build, commit and push to the `public` branch.

```shell
git checkout public
git restore --source main vangen.json
vangen -out .
git add .
git commit -am "Update vanity go imports"
git push
```
