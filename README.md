# Name : Venkatesh Subramaniyan

# Crackstation - 1.0.0
The following version supports single character. The list of characters include alphabets (both uppercase and lowercase) and numbers (0-9).

## Package CrackStation 
The following method (**Decrypt**) accepts the SHA1 encrypted string and returns a decrypted character.

    Decrypt:
        input arguments (heading):
            shaHash - which should be SHA1 encrypted
        returns:
            returns the decrypted output. 	

## Usage:
1. add this git url (`.package(url: "https://github.com/Venseven/CrackStation.git", from: "1.0.0")`)  in `package.swift` (package -> target/test -> dependencies)
2.
```  swift
import CrackStation
let decrypted_string = try CrackStation().decrypt(shaHash: "<insert encrypted string>")
```