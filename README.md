<!--
SPDX-FileCopyrightText: 2023 Shun Sakai

SPDX-License-Identifier: CC-BY-4.0
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

```julia-repl
pkg> add Sysexits
```

### Documentation

See the [documentation][stable-docs-url] for more details.

## Source code

The upstream repository is available at
<https://github.com/sorairolake/Sysexits.jl.git>.

## Changelog

Please see [CHANGELOG.adoc].

## Contributing

Please see [CONTRIBUTING.adoc].

## Similar projects

- <https://github.com/sorairolake/sysexits-rs> (Rust)
- <https://github.com/sorairolake/sysexits-zig> (Zig)

You can discover more projects at
<https://github.com/sorairolake/awesome-sysexits>.

## License

Copyright (C) 2023 Shun Sakai (see [AUTHORS.adoc])

This library is distributed under the terms of either the _Apache License 2.0_
or the _MIT License_.

This project is compliant with version 3.3 of the [_REUSE Specification_]. See
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
[_REUSE Specification_]: https://reuse.software/spec-3.3/
