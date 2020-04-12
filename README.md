[Swift Study] 스위프트5를 공부해봅시다!
=============================

# 1. 스위프트란?
Apple의 WWDC 2014에서 공개된 프로그래밍 언어이다.  
기존의 Apple은 Objective-C 기반으로 프로그래밍을 했지만 
이의 단점을 보완하기 위해 자체적으로 개발하였다.

# 2. 기본문법 (C와의 차이점 중점)
## 2.1 상수
- let 키워드를 사용하여 상수를 선언한다.
- let [상수명] : [상수의 데이터 타입] = [값]
- 데이터 타입은 생략해도 된다.
  
C:
```C
const char[20] = "Constant";
const int = 10;
```

Swift:
```swift
let const : String = "Constant"
let const1 = "Constant2"
let int : Int = 10
```

## 2.2 변수
- var 키워드를 사용하여 변수를 선언한다.
- var [변수명] : [변수의 데이터 타입] = [값]
- 상수와 마찬가지로 데이터 타입은 생략해도 된다.
  
C :
```C
int integer;
char character;
char[10] string;
long long longinteger;
```

Swift :
```swift
var val1 = "String"
var val2 : String = "String1"
```

## 2.3 데이터 타입
Int : 정수  
UInt : 0을 포함한 양의 정수  
Bool : true, false를 가지는 데이터 타입. C와는 다르게 1, 0은 에러가 남.  
Float : C와 동일  
Double : C와 동일  
nil : C의 null과 동일 하지만 값이 들어있지 않고 비어있음을 뜻함.  
Character : C의 char와 비슷  
String : C++의 String과 동일

Any : 모든 데이터 타입을 나타냄.  
AnyObject : 모든 클래스 타입의 인스턴스(객체)를 나타냄.  
이 두가지 타입은 사용하지 않는 것이 좋음. 사용할 때 마다 타입을 체크하고 형변환을 해야하기 때문.  

## 2.4 함수
func에서 명시한 반환타입과 반환값의 타입이 같아야함.  
``` swift
func [함수명] (매개변수이름 전달인자레이블:매개변수타입, 매개변수2 ...) -> [반환타입] {
    코드
    ...
    ...
    return 반환값
}
```

ex)  
name은 외부에서 사용할 때 사용하는 것.  
hello는 내부에서 사용할 때 사용하는 것.  
``` swift
func fun (hello name:String) -> String {
    var ret:String
    ret = hello + "world"
    return ret
}
fun(name:"hello ")
```

## 2.5 Optional
- Int?, String? ...
- 값이 있을 수도 있고 없을 수도(nil) 있다.
- 값을 가지고 있는 객체라고 보면 됨.

``` swift
var optname: String? = "Optional"
print(optname) //Print -> Optional("Optional")
optname = nil
print(optname) //Print -> nil
```

- Int!, String! ...
- 옵셔널이지만 "암묵적으로" nil은 없다고 판단한다.
- 만약에 이 옵셔널 변수에 nil이 들어가게 되면 런타임에러가 발생하게 된다.
- 컴파일 에러는 발생하지 않는다. (모든 책임은 코더에게..)
- 정말 위험하다. 안쓰는걸 추천한다.
- 반대로 말하면 ?나 !가 없는 변수는 nil이 들어갈 수 없다.

``` swift
var optname: String!

```
? : 변수가 nil일 수도 있다!  
! : 변수가 nil은 아닐걸...?  
X : 변수는 nil이 절대 아니다!  

### 2.5.1 Optional Binding
- 옵셔널을 사용한 변수는 객체처럼 사용되므로 바로 사용할 수 없다.
- 대신 강제 추출 하거나, Optional Binding을 이용하여 안의 값을 사용할 수 있다.
- 둘이 비슷하긴함.
``` swift
//강제 추출
var myName: String? = "Forced"
if myName != nil {
    print("my name is \(myName!)")
} else {
    print("my name is nil")
}

//Optional Binding
var yourname: String? = "OB"
if let name = yourname {
    print("your name is \(name)")
} else {
    print("your name is nil")
}
```

### 2.5.2 Optional Chaining
- 옵셔널 바인딩을 할 때 여러 변수를 벗겨내야할 때 복잡해지는 것을 방지할 수 있다.  

Optional Chaining 적용 전
``` swift
var addressNumber: Int?
if let home = paul.residence {
    if let postalAddress = home.address {
        if let building = postalAddress.buildingNumber {
            if let convertedNumber = building.toInt() {
                addressNumber = convertedNumber
            }
        }
    }
}
```
Optional Chaining 적용 후
``` swift
var addressNumber: Int?
addressNumber = paul.residence?.address?.buildingNumber?.toInt()
```

## 2.6 구조체
- C에서 사용하는 구조체와 유사함.
- 구조체 자체적으로 메서드를 가질 수 있음.

``` swift
struct family {
    var lastName: String
    var Number: Int
    func name() -> String {
        return self.lastName
    }
}

```

## 2.7 클래스
- 구조체와 다르게 상속 가능
- 구조체는 값타입, 클래스는 참조타입
- deinit 사용 가능

``` swift
class Person {
    var name: String
    var height: Double
    var weight: Double
    init(_ name:String, _ h:Double, _ w:Double) {
        self.name = name
        self.height=h
        self.weight=w
    }
    deinit {
        print("Personal Info removed")
        dump(self)
    }
    func all() -> String {
        return "His Name is \(self.name) and height is \(self.height) and weight is \(self.weight)"
    }
}

var Doe: Person = Person("John", 5.7, 150)
Doe.all()
```