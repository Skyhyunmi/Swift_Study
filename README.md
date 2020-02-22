[Swift Study] 스위프트"5"를 공부해봅시다!
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
let int : Integer = 10
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


## 2.3 키보드입력
C :
```C
int var;
scanf("%d", &var);
```

Swift : 
```swift
let var = readLine()
```
readLine은 Optional String을 반환한다.
이게 뭔지는 뒤에서 알려주겠다.

## 2.4 화면출력
C :
```C
printf();
```
Swift : 
```swift
print("문자열 %d", 어떤 변수)
print("문자열 \(어떤 변수)")
```


## 2.1 변수
C :
```C

```
Swift :
```swift

```