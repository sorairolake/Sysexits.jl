<!--
SPDX-FileCopyrightText: 2023 Shun Sakai

SPDX-License-Identifier: Apache-2.0 OR MIT
-->

# Sysexits.jl

[![CI][ci-badge]][ci-url]
[![JuliaHub][juliahub-badge]][juliahub-url]
[![Stable Docs][stable-docs-badge]][stable-docs-url]
[![Dev Docs][dev-docs-badge]][dev-docs-url]

**Sysexits.jl** is a library that provides the system exit code constants as
defined by [`<sysexits.h>`].

This library is a port of [sysexits-rs].

## Usage

To install this package:

```
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

Please see [CHANGELOG.adoc].

## Contributing

Please see [CONTRIBUTING.adoc].

## License

Copyright &copy; 2023&ndash;2024 Shun Sakai (see [AUTHORS.adoc])

This library is distributed under the terms of either the _Apache License 2.0_
or the _MIT License_.

This project is compliant with version 3.0 of the [_REUSE Specification_]. See
copyright notices of individual files for more details on copyright and
licensing information.

[ci-badge]: https://img.shields.io/github/actions/workflow/status/sorairolake/Sysexits.jl/CI.yaml?branch=develop&style=for-the-badge&logo=github&label=CI
[ci-url]: https://github.com/sorairolake/Sysexits.jl/actions?query=branch%3Adevelop+workflow%3ACI++
[juliahub-badge]: https://img.shields.io/badge/JuliaHub-Sysexits-mediumorchid?style=for-the-badge&logo=julia
[juliahub-url]: https://juliahub.com/ui/Packages/General/Sysexits
[stable-docs-badge]: https://img.shields.io/badge/docs-stable-blue?style=for-the-badge
[stable-docs-url]: https://sorairolake.github.io/Sysexits.jl/stable/
[dev-docs-badge]: https://img.shields.io/badge/docs-dev-blue?style=for-the-badge
[dev-docs-url]: https://sorairolake.github.io/Sysexits.jl/dev/
[`<sysexits.h>`]: https://man.openbsd.org/sysexits
[sysexits-rs]: https://crates.io/crates/sysexits
[CHANGELOG.adoc]: CHANGELOG.adoc
[CONTRIBUTING.adoc]: CONTRIBUTING.adoc
[AUTHORS.adoc]: AUTHORS.adoc
[_REUSE Specification_]: https://reuse.software/spec/
