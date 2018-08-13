//: Playground - noun: a place where people can play

import Foundation

// 定义元组
// 方式一
// 元组类型(String, Int, Int)
let a = ("junchen", 23, 170)

// 方式二:加个标签,最常见
let b = (name:"junchen", age:23, height:170)

// 方式三
let (name, age, height) = ("junchen", 23, 170)


let point = (x:10, y:20)
point.x
point.y

point.0
point.1
