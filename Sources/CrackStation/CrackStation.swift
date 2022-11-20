import Foundation 
import XCTest

public class CrackStation: Decrypter
{
    private var lookUpfromDictionary = Dictionary<String,String>()
    required public init(){
        do{
            lookUpfromDictionary = try loadFromJsonDictionary()
        }
        catch{
            lookUpfromDictionary = ["":""]
        }

    }
    public func decrypt(shaHash: String) -> String?{    
        let decrypted_password = lookUpfromDictionary[shaHash]
        return decrypted_password
    }
    private func loadFromJsonDictionary() throws -> Dictionary<String,String>{
        guard let path = Bundle.module.url(forResource: "data", withExtension: "json") else { return ["":""]}
        guard let data = try? Data(contentsOf: path) else{return ["":""]}
        
        let jsonResult = try? JSONSerialization.jsonObject(with: data)
        guard let getDictionaryFromJson = jsonResult as? Dictionary<String,String> else{return ["":""]}
        return getDictionaryFromJson
    }

}