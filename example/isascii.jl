#
# SPDX-License-Identifier: Apache-2.0 OR MIT
#
# Copyright (C) 2023 Shun Sakai
#

import Sysexits

input = isempty(ARGS) ? readchomp(stdin) : read(ARGS[1], String)
try
    ascii(input)
    println("OK")
    Sysexits.exit()
catch err
    showerror(stderr, err)
    println(stderr)
    Sysexits.exit(Sysexits.dataerr)
end
