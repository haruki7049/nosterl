all: build

# Build
build:
	erl -make

b: build

# Clean
clean:
	rm -f ebin/*.beam

c: clean

# Formatters by treefmt-nix
format:
	treefmt

f: format
fmt: format

# Dialyzer
dialyzer:
	dialyzer --build_plt --apps ./ebin --get_warnings
