//: Playground - noun: a place where people can play

import Foundation


class Student : NSObject {
    
    // 存储属性
    var name: String?
    var mathScore: Double = 0.0
    var chineseScore: Double = 0.0
    
    var averageScore:Double {
        get {
            return (mathScore + chineseScore) * 0.5
        }
        
        set {
            print(newValue)
        }
    }
    
    static var courseCount: Int = 0
}

//
//var stu = Student()
//stu.name = "junchen"
//stu.chineseScore = 89
//stu.mathScore = 92
//
//print(stu.averageScore)
//print(Student.courseCount)

class Person : NSObject {
    
    var name: String? {
        
        willSet {
            print(name)
            print(newValue)
        }
        
        didSet {
            print(name)
            print(oldValue)
        }
    }
    
    var age : Int = 0
}

let p = Person()
p.name = "why"
print(p.name)
p.age = 18
