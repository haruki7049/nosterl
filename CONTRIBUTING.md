## Development

### Tools

I use Nix. Why don't you use Nix?

```bash
nix-shell
nix develop -L
direnv allow # When you use nix-direnv, you can use it
```

There is a list of the build tools

- Erlang 28
- GNU make

### How to build

To build:

```bash
make build
make b
```

To clean up:

```bash
make clean
make c
```

To use code-formatter (This uses treefmt-nix, so if you don't use Nix, you cannot use it):

```bash
make format
make fmt
make f
```
