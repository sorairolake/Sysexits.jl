#
# SPDX-License-Identifier: Apache-2.0 OR MIT
#
# Copyright (C) 2023 Shun Sakai
#

using Documenter
using Sysexits

DocMeta.setdocmeta!(Sysexits, :DocTestSetup, :(using Sysexits); recursive = true)

makedocs(
    modules = [Sysexits],
    sitename = "Sysexits.jl",
    authors = "Shun Sakai",
    pages = ["Home" => "index.md"],
)
deploydocs(repo = "github.com/sorairolake/Sysexits.jl.git")
