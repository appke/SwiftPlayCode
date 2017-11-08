//: Playground - noun: a place where people can play

import Foundation

//var names : Array<String> = ["junchen", "simba"]
//
//for name in names {
//    print(name)
//}
//
//names[1]
//
//let dogs = ["xiaohua", "xiaohei"]
//
//
//
//var cats = [String]()
//cats.append("xiaobai")
//
//if cats.isEmpty {
//    print("数组是空的")
//} else {
//    print(cats.last)
//}

//var animals : [String] = Array()
//var animals : [String] = [String]()
//animals.append("elephant", "monkey")


var dict : [String : Any] = ["age" : 17, "name":"mjc", "weight" : 52]
for (key, value) in dict {
    print("\(key)----\(value)")
}

dict.removeValue(forKey: "age")
print(dict)

let dict1: [String : Any] = ["age" : 17, "name":"mjc", "weight" : 52]
var dict2:[String : Any] = ["height" : 190]



