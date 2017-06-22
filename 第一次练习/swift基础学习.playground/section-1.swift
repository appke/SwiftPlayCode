// Playground - noun: a place where people can play

import Foundation

//var age = 23
let pi = 3.14
print("hello World!")


let a = 20
let b = 3.14
let c = a + Int(b)

if a > 10 {
    print("a大于10！")
} else {
    print("a小于10！")
}


let score = 87

if score < 60 {
    print("不及格")
} else if score <= 70 {
    print("及格")
} else if score <= 80 {
    print("良好")
} else if score <= 90 {
    print("优秀")
} else {
    print("完美")
}

let age = 21
let result = age > 18 ? "可以上网" : "回家去"

func online(age : Int) -> Void {
    guard age >= 18 else {
        // 判断语句为假，会执行else
        print("回家去")
        return
    }
    
    // 如果为真，继续执行
    print("可以上网")
}

online(age:23)






