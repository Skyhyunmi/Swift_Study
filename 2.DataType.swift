var int:Int = -12345
print(int) // -12345
print(type(of: int)) // Int
//int = nil // Error : 'nil' cannot be assigned to type 'Int'

var uint:UInt = 12345
print(uint) // 12345
print(type(of: uint)) // UInt

var bool: Bool = true
print(bool) // true
print(type(of: bool)) // Bool
bool = false
print(bool) // false
// bool = 1 // Error : cannot assign value of type 'Int' to type 'Bool'
//print(bool)
// bool = 0 // Error : cannot assign value of type 'Int' to type 'Bool'
//print(bool)

var float:Float = 1.2345678
print(float)

var double: Double = 1.2345678910111213
print(double)

var char: Character = "A"
//char = "AB" // Error: cannot convert value of type 'String' to specified type 'Character'
print(char)

var str: String = "A"
print(str)
str = "AB"
print(str)

var any: Any = "jasdklfhbashjlfn"
print(type(of: any))
print(any)
any = 123
print(type(of: any))
print(any)
any = 1.2
print(type(of: any))
print(any)


class A {
    var a:String
    init(ea:String) {
        self.a = ea
    }
}
let someObjects : [AnyObject] = [
    A(ea: "asdf"),
    A(ea: "123"),
    A(ea: "qer")
]
for cur in someObjects {
    let curr = cur as! A
    print(curr.a)
}
