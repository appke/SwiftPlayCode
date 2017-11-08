//: Playground - noun: a place where people can play

import Foundation

let str1="helloeeh"
let str2="world"

print(str1 + str2)

// 打印字符串
for a in str1.characters {
    print(a)
}

// 2:3 -> 02:03
let min = 2
let second = 32
// 02:032
//let times = "0\(min):0\(second)"
// 02:32
let time = String(format: "%02d:%02d", arguments: [min, second])


let myStr = "www.520it.com"
//var subStr = myStr.substringFromIndex(index: String.Index)
var str = (myStr as NSString).substring(to: 3)

var www =  (myStr as NSString).substring(from: 4)
var http = (myStr as NSString).substring(with: NSRange(location: 4, length: 5))



print("hello")
