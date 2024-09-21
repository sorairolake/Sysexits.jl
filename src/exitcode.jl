# SPDX-FileCopyrightText: 2023 Shun Sakai
#
# SPDX-License-Identifier: Apache-2.0 OR MIT

"""
The `ExitCode` type represents the system exit code constants as defined by
[`<sysexits.h>`](https://man.openbsd.org/sysexits).

# Values

## `ok`

The successful exit.

## `usage`

The command was used incorrectly, e.g., with the wrong number of arguments, a
bad flag, bad syntax in a parameter, or whatever.

## `dataerr`

The input data was incorrect in some way. This should only be used for user's
data and not system files.

## `noinput`

An input file (not a system file) did not exist or was not readable. This could
also include errors like "No message" to a mailer (if it cared to catch it).

## `nouser`

The user specified did not exist. This might be used for mail addresses or
remote logins.

## `nohost`

The host specified did not exist. This is used in mail addresses or network
requests.

## `unavailable`

A service is unavailable. This can occur if a support program or file does not
exist. This can also be used as a catch-all message when something you wanted to
do doesn't work, but you don't know why.

## `software`

An internal software error has been detected. This should be limited to
non-operating system related errors if possible.

## `oserr`

An operating system error has been detected. This is intended to be used for
such things as "cannot fork", or "cannot create pipe". It includes things like
[`getuid(2)`](https://man.openbsd.org/getuid.2) returning a user that does not
exist in the passwd file.

## `osfile`

Some system file (e.g., `/etc/passwd`, `/var/run/utmp`) does not exist, cannot
be opened, or has some sort of error (e.g., syntax error).

## `cantcreat`

A (user specified) output file cannot be created.

## `ioerr`

An error occurred while doing I/O on some file.

## `tempfail`

Temporary failure, indicating something that is not really an error. For example
that a mailer could not create a connection, and the request should be
reattempted later.

## `protocol`

The remote system returned something that was "not possible" during a protocol
exchange.

## `noperm`

You did not have sufficient permission to perform the operation. This is not
intended for file system problems, which should use `noinput` or `cantcreat`,
but rather for higher level permissions.

## `config`

Something was found in an unconfigured or misconfigured state.

# Examples

```jldoctest
julia> ExitCode
Enum ExitCode:
ok = 0x00
usage = 0x40
dataerr = 0x41
noinput = 0x42
nouser = 0x43
nohost = 0x44
unavailable = 0x45
software = 0x46
oserr = 0x47
osfile = 0x48
cantcreat = 0x49
ioerr = 0x4a
tempfail = 0x4b
protocol = 0x4c
noperm = 0x4d
config = 0x4e
```
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
    base

The base value for `ExitCode`.

# Examples

```jldoctest
julia> Sysexits.base == Sysexits.usage
true
```
"""
const base = usage

"""
    max

The maximum value for `ExitCode`.

# Examples

```jldoctest
julia> Sysexits.max == Sysexits.config
true
```
"""
const max = config

"""
    issuccess(code::ExitCode) -> Bool

Return `true` if this system exit code represents successful termination,
`false` otherwise.

# Examples

```jldoctest
julia> issuccess(Sysexits.ok)
true

julia> issuccess(Sysexits.usage)
false
```
"""
issuccess(code::ExitCode)::Bool = code == ok

"""
    isfailure(code::ExitCode) -> Bool

Return `true` if this system exit code represents unsuccessful termination,
`false` otherwise.

# Examples

```jldoctest
julia> isfailure(Sysexits.ok)
false

julia> isfailure(Sysexits.usage)
true
```
"""
isfailure(code::ExitCode)::Bool = !issuccess(code)

"""
    exit(code::ExitCode = ok)

Stop the program with the exit code defined by [`ExitCode`](@ref).
"""
exit(code::ExitCode = ok) = Base.exit(code)

export ExitCode, issuccess, isfailure
