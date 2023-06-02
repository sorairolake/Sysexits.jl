#
# SPDX-License-Identifier: Apache-2.0 OR MIT
#
# Copyright (C) 2023 Shun Sakai
#

using Documenter, Sysexits, Test

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
    @test issuccess(Sysexits.ok)
end

@testset "issuccess for unsuccessful termination" begin
    @test !issuccess(Sysexits.usage)
    @test !issuccess(Sysexits.dataerr)
    @test !issuccess(Sysexits.noinput)
    @test !issuccess(Sysexits.nouser)
    @test !issuccess(Sysexits.nohost)
    @test !issuccess(Sysexits.unavailable)
    @test !issuccess(Sysexits.software)
    @test !issuccess(Sysexits.oserr)
    @test !issuccess(Sysexits.osfile)
    @test !issuccess(Sysexits.cantcreat)
    @test !issuccess(Sysexits.ioerr)
    @test !issuccess(Sysexits.tempfail)
    @test !issuccess(Sysexits.protocol)
    @test !issuccess(Sysexits.noperm)
    @test !issuccess(Sysexits.config)
end

@testset "isfailure for successful termination" begin
    @test !isfailure(Sysexits.ok)
end

@testset "isfailure for unsuccessful termination" begin
    @test isfailure(Sysexits.usage)
    @test isfailure(Sysexits.dataerr)
    @test isfailure(Sysexits.noinput)
    @test isfailure(Sysexits.nouser)
    @test isfailure(Sysexits.nohost)
    @test isfailure(Sysexits.unavailable)
    @test isfailure(Sysexits.software)
    @test isfailure(Sysexits.oserr)
    @test isfailure(Sysexits.osfile)
    @test isfailure(Sysexits.cantcreat)
    @test isfailure(Sysexits.ioerr)
    @test isfailure(Sysexits.tempfail)
    @test isfailure(Sysexits.protocol)
    @test isfailure(Sysexits.noperm)
    @test isfailure(Sysexits.config)
end
