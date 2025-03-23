var documenterSearchIndex = {"docs":
[{"location":"api/#API-Reference","page":"API Reference","title":"API Reference","text":"","category":"section"},{"location":"api/","page":"API Reference","title":"API Reference","text":"Modules = [Sysexits]","category":"page"},{"location":"api/#Sysexits.Sysexits","page":"API Reference","title":"Sysexits.Sysexits","text":"The Sysexits module provides the system exit code constants as defined by <sysexits.h>.\n\n\n\n\n\n","category":"module"},{"location":"api/#Sysexits.base","page":"API Reference","title":"Sysexits.base","text":"base\n\nThe base value for ExitCode.\n\nExamples\n\njulia> Sysexits.base == Sysexits.usage\ntrue\n\n\n\n\n\n","category":"constant"},{"location":"api/#Sysexits.max","page":"API Reference","title":"Sysexits.max","text":"max\n\nThe maximum value for ExitCode.\n\nExamples\n\njulia> Sysexits.max == Sysexits.config\ntrue\n\n\n\n\n\n","category":"constant"},{"location":"api/#Sysexits.ExitCode","page":"API Reference","title":"Sysexits.ExitCode","text":"The ExitCode type represents the system exit code constants as defined by <sysexits.h>.\n\nValues\n\nok\n\nThe successful exit.\n\nusage\n\nThe command was used incorrectly, e.g., with the wrong number of arguments, a bad flag, bad syntax in a parameter, or whatever.\n\ndataerr\n\nThe input data was incorrect in some way. This should only be used for user's data and not system files.\n\nnoinput\n\nAn input file (not a system file) did not exist or was not readable. This could also include errors like \"No message\" to a mailer (if it cared to catch it).\n\nnouser\n\nThe user specified did not exist. This might be used for mail addresses or remote logins.\n\nnohost\n\nThe host specified did not exist. This is used in mail addresses or network requests.\n\nunavailable\n\nA service is unavailable. This can occur if a support program or file does not exist. This can also be used as a catch-all message when something you wanted to do doesn't work, but you don't know why.\n\nsoftware\n\nAn internal software error has been detected. This should be limited to non-operating system related errors if possible.\n\noserr\n\nAn operating system error has been detected. This is intended to be used for such things as \"cannot fork\", or \"cannot create pipe\". It includes things like getuid(2) returning a user that does not exist in the passwd file.\n\nosfile\n\nSome system file (e.g., /etc/passwd, /var/run/utmp) does not exist, cannot be opened, or has some sort of error (e.g., syntax error).\n\ncantcreat\n\nA (user specified) output file cannot be created.\n\nioerr\n\nAn error occurred while doing I/O on some file.\n\ntempfail\n\nTemporary failure, indicating something that is not really an error. For example that a mailer could not create a connection, and the request should be reattempted later.\n\nprotocol\n\nThe remote system returned something that was \"not possible\" during a protocol exchange.\n\nnoperm\n\nYou did not have sufficient permission to perform the operation. This is not intended for file system problems, which should use noinput or cantcreat, but rather for higher level permissions.\n\nconfig\n\nSomething was found in an unconfigured or misconfigured state.\n\nExamples\n\njulia> ExitCode\nEnum ExitCode:\nok = 0x00\nusage = 0x40\ndataerr = 0x41\nnoinput = 0x42\nnouser = 0x43\nnohost = 0x44\nunavailable = 0x45\nsoftware = 0x46\noserr = 0x47\nosfile = 0x48\ncantcreat = 0x49\nioerr = 0x4a\ntempfail = 0x4b\nprotocol = 0x4c\nnoperm = 0x4d\nconfig = 0x4e\n\n\n\n\n\n","category":"type"},{"location":"api/#Sysexits.exit","page":"API Reference","title":"Sysexits.exit","text":"exit(code::ExitCode = ok)\n\nStop the program with the exit code defined by ExitCode.\n\n\n\n\n\n","category":"function"},{"location":"api/#Sysexits.isfailure-Tuple{ExitCode}","page":"API Reference","title":"Sysexits.isfailure","text":"isfailure(code::ExitCode) -> Bool\n\nReturn true if this system exit code represents unsuccessful termination, false otherwise.\n\nExamples\n\njulia> isfailure(Sysexits.ok)\nfalse\n\njulia> isfailure(Sysexits.usage)\ntrue\n\n\n\n\n\n","category":"method"},{"location":"api/#Sysexits.issuccess-Tuple{ExitCode}","page":"API Reference","title":"Sysexits.issuccess","text":"issuccess(code::ExitCode) -> Bool\n\nReturn true if this system exit code represents successful termination, false otherwise.\n\nExamples\n\njulia> issuccess(Sysexits.ok)\ntrue\n\njulia> issuccess(Sysexits.usage)\nfalse\n\n\n\n\n\n","category":"method"},{"location":"#Sysexits.jl","page":"Home","title":"Sysexits.jl","text":"","category":"section"},{"location":"","page":"Home","title":"Home","text":"Sysexits.jl provides the system exit code constants as defined by <sysexits.h>.","category":"page"},{"location":"#Installation","page":"Home","title":"Installation","text":"","category":"section"},{"location":"","page":"Home","title":"Home","text":"To install this package, use the following command inside the Pkg REPL:","category":"page"},{"location":"","page":"Home","title":"Home","text":"pkg> add Sysexits","category":"page"},{"location":"","page":"Home","title":"Home","text":"After the package is installed, it can be loaded with:","category":"page"},{"location":"","page":"Home","title":"Home","text":"using Sysexits","category":"page"}]
}
