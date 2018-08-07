//: Playground - noun: a place where people can play

import UIKit
import XCPlayground

let color = UIColor.redColor()
let frame = CGRect(x: 0, y: 0, width: 150, height: 80)
let point = CGPoint(x: 100, y: 100)
let size = CGSize(width: 100, height: 80)

let image = UIImage(named: "me")
let image2 = UIImage(named: "baidu")

let url = NSURL(string: "https://www.baidu.com")
let attrString = NSAttributedString(string: "this is an attributedString", attributes: [NSForegroundColorAttributeName: UIColor.yellowColor(), NSFontAttributeName: UIFont.systemFontOfSize(50.0)])

/* ##3 显示带"+"号按钮的视图 */
let view = UIView(frame: CGRect(x: 0, y: 0, width: 120, height: 60))
view.backgroundColor = UIColor.whiteColor()

let addBtn = UIButton(type: .ContactAdd)
addBtn.center = CGPoint(x: view.center.x, y: view.center.y)
view.addSubview(addBtn)

/* ##4 sin(i) = i */
for i in 0..<100
{
    let f = Float(i)
    sin(f) * f
}

/* ##4 显示结果 */
XCPlaygroundPage.currentPage.liveView = view
XCPlaygroundPage.currentPage.captureValue(frame, withIdentifier: "this is a frame")
XCPlaygroundPage.currentPage.captureValue(color, withIdentifier: "show red color")
XCPlaygroundPage.currentPage.captureValue(attrString, withIdentifier: "this is a string")


/* ##5 图形 */
let triange = Shape(frame: frame, type: .Triangle)
let square = Shape(frame: frame, type: .Square)
let round = Shape(frame: frame, type: .Round)

var path = NSBundle.mainBundle().pathForResource("Info", ofType: "plist")
let dict = NSDictionary(contentsOfFile: path!)

path = XCPSharedDataDirectoryPath.stringByAppendingString("/nice.png")
let sharedImage = UIImage(contentsOfFile: path!)


/* ##5 字面量 */
let literImage = [#Image(imageLiteral: "me@2x.png")#]
let literalFile = [#FileReference(fileReferenceLiteral: "Info.plist")#]
let literalColor = [#Color(colorLiteralRed: 0.2078431397676468, green: 0.7490196228027344, blue: 0.3333333432674408, alpha: 1)#]








