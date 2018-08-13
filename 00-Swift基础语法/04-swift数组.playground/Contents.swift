//: Playground - noun: a place where people can play

import Foundation

var names : Array<String> = ["junchen", "simba"]

for name in names {
    print(name)
}
names[1]

let dogs = ["xiaohua", "xiaohei"]

var cats = [String]()
cats.append("xiaobai")
if cats.isEmpty {
    print("数组是空的")
} else {
    print(cats.last as Any)
}


//var animals : [String] = Array()
var animals : [String] = [String]()
animals.append("elephant")
animals.append("monkey")
print(animals)

// 1.定义数组
//  error: heterogeneous collection literal could only be inferred to '[Any]'; add explicit type annotation if this is intentional
let array = [12, "why", 1.88] as [Any]
// 2.取出第二个元素
let objc = array[0]
// 3.将objc转成真正的类型来使用
// 3.1.as? 将Any转成可选类型,通过判断可选类型是否有值,来决定是否转化成功了
let age = objc as? Int
print(age) // Optional(12)
// 3.2.as! 将Any转成具体的类型 注意:如果不是该类型,那么程序会崩溃
let age1 = objc as! Int
print(age1) // 12

