//: Playground - noun: a place where people can play

import Foundation


var dict : [String : Any] = ["age" : 17, "name":"mjc", "weight" : 52]
for (key, value) in dict {
    print("\(key)----\(value)")
}

dict.removeValue(forKey: "age")
print(dict)

let dict1: [String: Any] = ["age" : 17, "name":"mjc", "weight" : 52]
var dict2:[String: Any] = ["height" : 190]


