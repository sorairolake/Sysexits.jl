# Sysexits.jl

[![CI][ci-badge]][ci-url]
[![Stable Docs][stable-docs-badge]][stable-docs-url]
[![Dev Docs][dev-docs-badge]][dev-docs-url]

**Sysexits.jl** is a library that provides the system exit code constants as
defined by [`<sysexits.h>`][sysexits-man-url].

This library is a port of [sysexits-rs][sysexits-rs-crate-url].

## Usage

To install this package:

```julia
pkg> add Sysexits
```

### Example

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

### Documentation

See the [documentation][stable-docs-url] for more details.

## Changelog

Please see [CHANGELOG.adoc](CHANGELOG.adoc).

## Contributing

Please see [CONTRIBUTING.adoc](CONTRIBUTING.adoc).

## License

Copyright &copy; 2023 Shun Sakai (see [AUTHORS.adoc](AUTHORS.adoc))

This library is distributed under the terms of either the _Apache License 2.0_
or the _MIT License_.

See [COPYRIGHT](COPYRIGHT), [LICENSE-APACHE](LICENSE-APACHE) and
[LICENSE-MIT](LICENSE-MIT) for more details.

[ci-badge]: https://img.shields.io/github/actions/workflow/status/sorairolake/Sysexits.jl/CI.yaml?branch=develop&label=CI&logo=github&style=for-the-badge
[ci-url]: https://github.com/sorairolake/Sysexits.jl/actions?query=branch%3Adevelop+workflow%3ACI++
[stable-docs-badge]: https://img.shields.io/badge/docs-stable-blue?style=for-the-badge
[stable-docs-url]: https://sorairolake.github.io/Sysexits.jl/stable/
[dev-docs-badge]: https://img.shields.io/badge/docs-dev-blue?style=for-the-badge
[dev-docs-url]: https://sorairolake.github.io/Sysexits.jl/dev/
[sysexits-man-url]: https://man.openbsd.org/sysexits
[sysexits-rs-crate-url]: https://crates.io/crates/sysexits
