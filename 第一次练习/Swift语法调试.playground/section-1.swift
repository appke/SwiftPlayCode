// Playground - noun: a place where people can play

import Foundation

var str = "Hello, playground"
print(str)
class muCalc {
    
    func sum(num1: Int, num2: Int) ->Int{
        
        return num1 + num2
    }
}

var calc = muCalc()
print(calc.sum(num1: 10, num2: 23))


//let a = 4
//print(a)
//
//
//// 分支语句
//let grade = "B"
//switch grade {
//    case "A":
//        print("优秀")
//    
//    case "B":
//        print("中等")
//        fallthrough
//    case "C":
//        print("不及格")
//    default:
//        print("未知")
//}
//
//let sex = 0
//
//switch sex {
//case 0:
//    fallthrough
//case 1:
//    print("正常人")
//default:
//    print("其他")
//}
//
//let m = 5
//let n = 10
//var result = 0
//
//let opration = "+"
//
//switch opration {
//case "+":
//    result = m + n
//case "-":
//    result = m - n
//case "*":
//    result = m * n
//case "/":
//    result = m / n
//default:
//    result = 0
//}
//
//print(result)
