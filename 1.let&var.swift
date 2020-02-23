let a: String = "Hello"
print(a) // Hello!
// a = "World!" // Error : Cannot assign to value: 'a' is a 'let' constant

let b = "Hello"
print(type(of: b)) // String

let c: Int = 12345
print(c) // 12345
print(type(of: c)) // Int
// c = 2345 // Error : Cannot assign to value: 'c' is a 'let' constant


var va: String = "Hello"
print(va) // Hello
va += " World!"
print(va) // Hello World!

var vb = "Hello"
print(type(of: vb)) // String

var vc: Int = 12345
print(vc) // 12345
print(type(of: vc)) // Int
