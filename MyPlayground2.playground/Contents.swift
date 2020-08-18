import UIKit

/*
 -- Function --
*/
func printName() {
    print("--> My name is hanbee")
}
printName()

// param 1개
func printMultipleOfTen(value: Int) {
    print("\(value) * 10 = \(value*10)")
}
printMultipleOfTen(value: 5)

// param 2개
//func printTotalPrice(price: Int, count: Int) {
//    print("Total Price: \(price * count)")
//}
//printTotalPrice(price: 1500, count: 5)
func printTotalPrice(_ price: Int, _ count: Int) {
    print("Total Price: \(price * count)")
}
printTotalPrice(1500, 5)

// param default
func printTotalPriceWithDefault(price: Int = 1500, count: Int) {
    print("Total Price: \(price * count)")
}
printTotalPriceWithDefault(count: 5)
printTotalPriceWithDefault(price: 2000, count: 7)

// return value
func totalPrice(price: Int, count: Int) -> Int {
    let totalPrice = price * count
    return totalPrice
}
let calculatedPrice = totalPrice(price: 10000, count: 77)

// 함수 도전 과제!

// 1. 성, 이름을 받아서 fullName을 출력하는 함수 만들기
func printFullName(firstName: String, lastName: String) {
    print("fullName: \(lastName) \(firstName)");
}
printFullName(firstName: "한비", lastName: "손")

// 2. 1번에서 만든 함수인데, 파라미터 이름을 제거하고 fullName 출력하는 함수 만들기
func printFullNameWithoutParameterName(_ firstName: String, _ lastName: String) {
    print("fullName is \(firstName) \(lastName)");
}
printFullNameWithoutParameterName("hanbee", "son")

// 3. 성, 이름을 받아서 fullName return 하는 함수 만들기
func returnFullName(firstName: String, lastName: String) -> String {
    return lastName + firstName
}
let fullName = returnFullName(firstName: "한비", lastName: "손")

// 함수의 고급 기능1
// overload: 같은 함수 이름을 가지지만 param type 또는 param 이름이 다른 경우
func printTotalPrice(price: Int, count: Int) {
    print("Total Price: \(price * count)");
}

func printTotalPrice(price: Double, count: Int) {
    print("Total Price: \(price * Double(count))");
}

// In-Out param
// 기본적으로 파라미터로 들어오는 값은 변경할 수 없기 때문에 inout 키워드를 사용
var value = 3
func incrementAndPrint(_ value: inout Int) {
    value += 1
    print(value)
}
incrementAndPrint(&value)

// 함수의 고급 기능2
// 함수의 param으로 함수를 전달
func add(_ a: Int, _ b: Int) -> Int {
    return a + b
}

func substract(_ a: Int, _ b: Int) -> Int {
    return a - b
}

var function = add
function(4, 2)

function = substract
function(4, 2)

// 같은 타입의 함수라면 여러 개 param으로 받을 수 있음
func printResult(_ function: (Int, Int) -> Int, _ a: Int, _ b: Int) {
    let result = function(a, b)
    print(result)
}
printResult(add, 10, 6)
printResult(substract, 10, 6)


/*
 -- Optional --
*/
var carName: String?
carName = nil
carName = "Tesla"

// 간단한 과제
var favoriteMovieStar: String?
let num = Int("10") // 문자열이 Int로 변경되지 않는 경우도 있기 때문에 num은 Int? 타입

// 고급 기능 4가지
// 1. Forced unwrapping
// print(carName) // 결과: Optional("Tesla")
print(carName!) // 값이 없는 경우에는 에러

// 2. Optional binding (if let)
if let unwrappedCarName = carName {
    print(unwrappedCarName)
} else {
    print("Car name is nil")
}

//func printParsedInt(from: String) {
//    if let parsedInt = Int(from) {
//        print(parsedInt)
//    } else {
//        print("Int로 변환할 수 없습니다.")
//    }
//}
//printParsedInt(from: "100")

// 3. Optional binding (guard)
func printParsedInt(from: String) {
    guard let parsedInt = Int(from) else {
        print("Int로 변환할 수 없습니다.")
        return
    }
    
    print(parsedInt)
}
printParsedInt(from: "100")

// 4. Nil coalescing
// myCarName을 그냥 기본 타입 변수로 하고 싶을 때
let myCarName = carName ?? "기본 모델"

// 도전 과제
// 1. 최애 음식 이름을 담는 변수를 작성하시고 (String?)
var favoriteFoodName: String? = "김치 찌개"

// 2. 옵셔널 바인딩을 이용해서 값을 확인해보기
print(favoriteFoodName!)

favoriteFoodName = nil

if let unwrappedName = favoriteFoodName {
    print(unwrappedName)
} else {
    print("가장 좋아하는 음식이 없습니다...ㅠㅠ")
}

favoriteFoodName = favoriteFoodName ?? "곱창전골"

func printFavoriteFoodName() {
    guard let unwrappedName = favoriteFoodName else {
        print("가장 좋아하는 음식이 없습니다...ㅠㅠ")
        return
    }
    
    print(unwrappedName)
}
printFavoriteFoodName()

// 3. 닉네임을 받아서 출력하는 함수 만들기, 조건 입력 파라미터는 String?
func printNickName(nickname: String?) {
    guard let unwrappedNickName = nickname else {
        print("nick name이 없습니다.")
        return
    }
    
    print(unwrappedNickName)
}
printNickName(nickname: "developerBee")
