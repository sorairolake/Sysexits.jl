#
# SPDX-License-Identifier: Apache-2.0 OR MIT
#
# Copyright (C) 2023 Shun Sakai
#

"""
The `ExitCode` type represents the system exit code constants as defined by
[`<sysexits.h>`](https://man.openbsd.org/sysexits).
"""
@enum ExitCode::UInt8 begin
    ok
    usage = 64
    dataerr
    noinput
    nouser
    nohost
    unavailable
    software
    oserr
    osfile
    cantcreat
    ioerr
    tempfail
    protocol
    noperm
    config
end

"""
    issuccess(code::ExitCode) -> Bool

Return `true` if this system exit code represents successful termination,
`false` otherwise.
"""
issuccess(code::ExitCode)::Bool = code == ok

"""
    isfailure(code::ExitCode) -> Bool

Return `true` if this system exit code represents unsuccessful termination,
`false` otherwise.
"""
isfailure(code::ExitCode)::Bool = !issuccess(code)

"""
    exit(code::ExitCode)

Stop the program with the exit code defined by `ExitCode`.
"""
exit(code::ExitCode) = Base.exit(code)
