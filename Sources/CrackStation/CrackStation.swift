import Foundation
import XCTest
public protocol Decrypter {
    init()

    func decrypt(shaHash: String) -> String? 
        
}


public class CrackStation: Decrypter
{
    required public init()
    {

    }
    public func decrypt(shaHash: String) -> String?{
        
        guard let path = Bundle.module.url(forResource: "data", withExtension: "json") else { return "nil" }

        let data = try! Data(contentsOf: path)
        let jsonResult = try! JSONSerialization.jsonObject(with: data)

        if let lookupTable: Dictionary = jsonResult as? Dictionary<String, String> {
           let answer=lookupTable[shaHash]
           if answer != nil{
            return answer!
            }
           else{
            return nil
            }
        }
        return "nil"
    }
}
	

    
