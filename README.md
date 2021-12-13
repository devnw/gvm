# gvm

Go Version Manager

## Install

To use the command below directly ensure that ~/bin is in your PATH.

```bash
curl -L https://github.com/devnw/gvm/releases/download/latest/gvm > ~/bin/gvm && chmod +x ~/bin/gvm
```

## Usage

To install a released version of `Go` use the following command.

```bash
gvm 1.17.5
```

If this version of Go has been previously installed, the
link will be updated activating that version. If the version
is not installed however `gvm` will install it, then link it.

### Development Version

`gvm` supports installing the current development version of `Go`

To install the current development version of `Go` use the following command.

```bash
gvm next
```

**NOTE:** If you have previously installed the development version of `Go` you **must** pass the `--update` flag if you want to
build the latest development version, otherwise it will keep using the previously compiled development version.

## How it works

`gvm` creates a directory at `$HOME/.gvm` and stores all of the Go versions in it. It then creates a symlink to the
currently active version at `$HOME/.gvm/go` which is then
added to the beginning of the PATH.
