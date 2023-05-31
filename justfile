#
# SPDX-License-Identifier: Apache-2.0 OR MIT
#
# Copyright (C) 2023 Shun Sakai
#

# Run tests
test:
    #!/usr/bin/env julia
    import Pkg
    Pkg.test()

# Run the formatter
fmt:
    #!/usr/bin/env julia
    import JuliaFormatter
    JuliaFormatter.format(".")

# Run the linter for GitHub Actions workflow files
@lint-github-actions:
    actionlint

# Run the formatter for the README
@fmt-readme:
    npx prettier -w README.md

# Increment the version
@bump part:
    bump2version {{part}}
