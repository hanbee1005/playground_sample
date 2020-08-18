import UIKit

/*
 -- Array --
*/
var evenNumbers: [Int] = [2, 4, 6, 8]
let evenNumbers2: Array<Int> = [2, 4, 6, 8]

evenNumbers.append(10)
evenNumbers += [12, 14, 16]
evenNumbers.append(contentsOf: [18, 20])

let isEmpty = evenNumbers.isEmpty

// let count = evenNumbers.count

if let firstItem = evenNumbers.first {
    print("first item is \(firstItem)")
} else {
    print("배열이 비어있습니다.")
}

if let lastItem = evenNumbers.last {
    print("last item is \(lastItem)")
} else {
    print("배열이 비어있습니다.")
}

evenNumbers.min()
evenNumbers.max()

let secondItem = evenNumbers[1]

// 0부터 2까지 인덱스 값을 한꺼번에 가져오기
let firstThree = evenNumbers[0...2]

evenNumbers.contains(3)
evenNumbers.contains(8)

evenNumbers.insert(0, at: 0)

evenNumbers.remove(at: 0)
// evenNumbers.removeAll()

evenNumbers[0] = -2
evenNumbers[0...2] = [-2, 0, 2]

// evenNumbers.swapAt(0, 9)

for num in evenNumbers {
    print(num)
}

for (index, num) in evenNumbers.enumerated() {
    print("idx: \(index), value: \(num)")
}

// 완전히 삭제되는 것이 아니라 그냥 없다 치고 출력
let firstThreeRemoved = evenNumbers.dropFirst(3)
let lastRemoved = evenNumbers.dropLast()

let fitstThree = evenNumbers.prefix(3)
let lastThree = evenNumbers.suffix(3)


/*
 -- Dictinary --
*/
var scoreDic: [String: Int] = ["Jason": 80, "Jay": 95, "Jake": 90]
var scoreDic2: Dictionary<String, Int> = ["Jason": 80, "Jay": 95, "Jake": 90]

scoreDic["Jason"]
scoreDic["Jay"]
if let score = scoreDic["Jerry"] {
    print(score)
} else {
    print("Jerry's score is nil")
}

// scoreDic = [:]
scoreDic.isEmpty
scoreDic.count

// 기존 사용자 업데이트
scoreDic["Jason"] = 99

// 새로운 사용자 추가
scoreDic["Jack"] = 100
scoreDic

// 사용자 제거
scoreDic["Jack"] = nil
scoreDic

for (name, score) in scoreDic {
    print("\(name), \(score)")
}

for key in scoreDic.keys {
    print("key: \(key)")
}

// 도전 과제
// 1. 이름, 직업, 도시에 대해서 본인의 dictionary 만들기
var myDic: [String: String] = ["name": "hanbee", "job": "developer", "city": "Seoul"]

// 2. 1번에서 도시를 부산으로 업데이트 하기
myDic["city"] = "Busan"

// 3. dictionary를 받아서 이름과 도시 프린트 하는 함수 만들기
func printNameAndCity(dic: Dictionary<String, String>) {
    guard let name = dic["name"], let city = dic["city"] else {
        print("이름과 도시가 없습니다.")
        return
    }
    
    print("name: \(name), city: \(city)")
}
printNameAndCity(dic: myDic)


/*
 -- Set --
*/
var someArray: Array<Int> = [1, 2, 3, 1]
var someSet: Set<Int> = [1, 2, 3, 1]

someSet.isEmpty
someSet.count

someSet.contains(1)

someSet.insert(5)
someSet.remove(1)
someSet


/*
 -- Closure --
*/
//var multiplyClosure: (Int, Int) -> Int = { (a: Int, b: Int) -> Int in
//    return a * b
//}
var multiplyClosure: (Int, Int) -> Int = { a, b in
    return a * b
}
// var multiplyClosure: (Int, Int) -> Int = { $0 * $1 }

let result = multiplyClosure(4, 2)

func operateTwoNum(a: Int, b: Int, operation: (Int, Int) -> Int) -> Int {
    let result = operation(a, b)
    return result
}

operateTwoNum(a: 4, b: 2, operation: multiplyClosure)

var addClosure: (Int, Int) -> Int = { a, b in
    return a + b
}

operateTwoNum(a: 4, b: 2, operation: addClosure)

operateTwoNum(a: 4, b: 2) {a, b in
    return a / b
}

let voidClosure: () -> Void = {
    print("iOS 개발자 짱, 클로저 사랑해")
}
voidClosure()

// Capturing Values
var count = 0

let incrementer = {
    count += 1
}

incrementer()
incrementer()
incrementer()
incrementer()

count
