#
# SPDX-License-Identifier: Apache-2.0 OR MIT
#
# Copyright (C) 2023 Shun Sakai
#

using Documenter
using Sysexits
using Test

DocMeta.setdocmeta!(Sysexits, :DocTestSetup, :(using Sysexits); recursive = true)

@testset "Doctests" begin
    doctest(Sysexits; manual = false)
end

@testset "ExitCode to integer" begin
    @test UInt8(Sysexits.ok) == 0
    @test UInt8(Sysexits.usage) == 64
    @test UInt8(Sysexits.dataerr) == 65
    @test UInt8(Sysexits.noinput) == 66
    @test UInt8(Sysexits.nouser) == 67
    @test UInt8(Sysexits.nohost) == 68
    @test UInt8(Sysexits.unavailable) == 69
    @test UInt8(Sysexits.software) == 70
    @test UInt8(Sysexits.oserr) == 71
    @test UInt8(Sysexits.osfile) == 72
    @test UInt8(Sysexits.cantcreat) == 73
    @test UInt8(Sysexits.ioerr) == 74
    @test UInt8(Sysexits.tempfail) == 75
    @test UInt8(Sysexits.protocol) == 76
    @test UInt8(Sysexits.noperm) == 77
    @test UInt8(Sysexits.config) == 78
end

@testset "issuccess for successful termination" begin
    @test Sysexits.issuccess(Sysexits.ok)
end

@testset "issuccess for unsuccessful termination" begin
    @test !Sysexits.issuccess(Sysexits.usage)
    @test !Sysexits.issuccess(Sysexits.dataerr)
    @test !Sysexits.issuccess(Sysexits.noinput)
    @test !Sysexits.issuccess(Sysexits.nouser)
    @test !Sysexits.issuccess(Sysexits.nohost)
    @test !Sysexits.issuccess(Sysexits.unavailable)
    @test !Sysexits.issuccess(Sysexits.software)
    @test !Sysexits.issuccess(Sysexits.oserr)
    @test !Sysexits.issuccess(Sysexits.osfile)
    @test !Sysexits.issuccess(Sysexits.cantcreat)
    @test !Sysexits.issuccess(Sysexits.ioerr)
    @test !Sysexits.issuccess(Sysexits.tempfail)
    @test !Sysexits.issuccess(Sysexits.protocol)
    @test !Sysexits.issuccess(Sysexits.noperm)
    @test !Sysexits.issuccess(Sysexits.config)
end

@testset "isfailure for successful termination" begin
    @test !Sysexits.isfailure(Sysexits.ok)
end

@testset "isfailure for unsuccessful termination" begin
    @test Sysexits.isfailure(Sysexits.usage)
    @test Sysexits.isfailure(Sysexits.dataerr)
    @test Sysexits.isfailure(Sysexits.noinput)
    @test Sysexits.isfailure(Sysexits.nouser)
    @test Sysexits.isfailure(Sysexits.nohost)
    @test Sysexits.isfailure(Sysexits.unavailable)
    @test Sysexits.isfailure(Sysexits.software)
    @test Sysexits.isfailure(Sysexits.oserr)
    @test Sysexits.isfailure(Sysexits.osfile)
    @test Sysexits.isfailure(Sysexits.cantcreat)
    @test Sysexits.isfailure(Sysexits.ioerr)
    @test Sysexits.isfailure(Sysexits.tempfail)
    @test Sysexits.isfailure(Sysexits.protocol)
    @test Sysexits.isfailure(Sysexits.noperm)
    @test Sysexits.isfailure(Sysexits.config)
end
