# Sysexits.jl

[Sysexits.jl](https://github.com/sorairolake/Sysexits.jl) provides the system
exit code constants as defined by
[`<sysexits.h>`](https://man.openbsd.org/sysexits).

## Installation

To install this package, use the following command inside the
[Pkg](https://pkgdocs.julialang.org/) REPL:

```
pkg> add Sysexits
```

After the package is installed, it can be loaded with:

```julia
using Sysexits
```

## Example

The following example stops the program with the exit code defined by
[`Sysexits.ExitCode`](@ref). If all characters in `str` are within the ASCII
range then the program stops with exit code `0` (`Sysexits.ok`), otherwise it
stops with exit code `65` (`Sysexits.dataerr`).

```julia
import Sysexits

str = "abcdefgh"
try
    astr = ascii(str)
    println(astr)
    Sysexits.exit()
catch err
    showerror(stderr, err)
    println(stderr)
    Sysexits.exit(Sysexits.dataerr)
end
```
