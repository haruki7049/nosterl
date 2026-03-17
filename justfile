# Compile
make:
    erl -make

# Clean
clean:
    rm -f ebin/*.beam

c: clean

# Formatters by treefmt-nix
format:
    treefmt

fmt: format
