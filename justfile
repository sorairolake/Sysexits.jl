# SPDX-FileCopyrightText: 2023 Shun Sakai
#
# SPDX-License-Identifier: Apache-2.0 OR MIT

# Run default recipe
_default:
    just -l

# Run tests
test:
    #!/usr/bin/env -S julia --project
    import Pkg
    Pkg.test()

# Run the formatter
fmt:
    #!/usr/bin/env julia
    import JuliaFormatter
    JuliaFormatter.format(".")

# Run the linter for GitHub Actions workflow files
lint-github-actions:
    actionlint -verbose

# Run the formatter for the README
fmt-readme:
    npx prettier -w README.md

# Build the documentation
build-docs:
    julia --project=docs -e ' \
        using Pkg; \
        Pkg.develop(PackageSpec(path = pwd())); \
        Pkg.instantiate() \
    '
    julia --project=docs docs/make.jl

# Run the formatter for the documentation
fmt-docs:
    npx prettier -w docs/src

# Increment the version
bump part:
    bump-my-version bump {{ part }}
