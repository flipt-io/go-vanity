# Vanity Go Imports for Flipt

## Pre-Requisites

- [vangen](https://github.com/leighmcculloch/vangen) `go install 4d63.com/vangen`

## Usage

```shell
$ git checkout public
$ git restore --source main vangen.json
$ vangen -out .
$ git commit -am "Update vanity go imports"
$ git push
```
