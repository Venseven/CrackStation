# CrackStation, A Decrypter implementation


## Overview
* This API will be used to decrypt the SHA1 or SHA2 hashes to its original form.
* This is intended only for assignment.

## Mission Statement
Decrypter API supports the decryption of 3|2|1 letter encrypted SHA hashes SHA1|SHA2.

## Installation
### Swift Package Manager
The [Swift Package Manager](https://www.swift.org/package-manager/) is a "a tool for managing the distribution of Swift code. It's integerated with swift build system to automate the process of downloading, compiling, and linking dependencies"

Once you have your swift package set up, add CrackStation to the list of dependencies in your `package.swift`  file: 

```
dependencies: [
   .package(url: "https://github.com/Venseven/CrackStation.git", from: "2.1.0")
]
```

## Usage:
### Init method :
### Decrypt method :
The following method (**Decrypt**) accepts the SHA1 | SHA2 encrypted string and returns the decrypted string.

    Decrypt:
        input arguments (heading):
            shaHash - which should be SHA1 encrypted
        returns:
            returns the decrypted output. 	

1. add this git url (`.package(url: "https://github.com/Venseven/CrackStation.git", from: "2.1.0")`)  in `package.swift` (package -> target/test -> dependencies)
2.
```  swift
import CrackStation
let decrypted_string = try CrackStation().decrypt(shaHash: "<insert encrypted string>")
```