# SPDX-FileCopyrightText: 2023 Shun Sakai
#
# SPDX-License-Identifier: Apache-2.0 OR MIT

using Documenter, Sysexits

DocMeta.setdocmeta!(Sysexits, :DocTestSetup, :(using Sysexits); recursive = true)

makedocs(
    modules = [Sysexits],
    sitename = "Sysexits.jl",
    authors = "Shun Sakai",
    pages = ["Home" => "index.md", "api.md"],
)
deploydocs(repo = "github.com/sorairolake/Sysexits.jl.git")
