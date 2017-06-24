import Foundation

public class User {

  var name = "Default"
  public init(){
  }
  public func load(){
    let url = Bundle.main.url(forResource: "Data", withExtension: "json")
    let data = try? Data(contentsOf: url!)
    let json = try? JSONSerialization.jsonObject(with: data!, options: .allowFragments) as! Dictionary<String, AnyObject>
    
    let root = json?["root"] as? Dictionary<AnyHashable, AnyObject>
    
    name = root?["user"]?["name"] as! String
  }
  
  public func hello(){
    print("Hi \(name)")
  }
  
}
