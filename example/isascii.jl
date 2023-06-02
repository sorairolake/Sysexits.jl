#
# SPDX-License-Identifier: Apache-2.0 OR MIT
#
# Copyright (C) 2023 Shun Sakai
#

import Sysexits

input = isempty(ARGS) ? readchomp(stdin) : ARGS[1]
try
    ascii(input)
    println("OK")
    Sysexits.exit(Sysexits.ok)
catch err
    showerror(stderr, err)
    println(stderr)
    Sysexits.exit(Sysexits.dataerr)
end
