func fun (_ name: String, _ age: Int) -> String {
   return fun2("He is \(name) and \(age) years old.")
}

func fun2 (_ sentence:String) -> String {
     return sentence + sentence.reversed()
}

print(fun("John", 12)) // He is John and 12 years old..dlo sraey 21 dna nhoJ si eH

// 함수는 여러겹 겹쳐도 가능.