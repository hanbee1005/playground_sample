import UIKit
import Foundation

// var str = "Hello, playground"

let value = arc4random_uniform(100)
print("--> \(value)")

/*
 -- Tuple --
*/
let coordinates = (4, 6)

let x = coordinates.0
let y = coordinates.1

let coordinatesNamed = (x: 4, y: 6)

let xx = coordinatesNamed.x
let yy = coordinatesNamed.y

let (x3, y3) = coordinatesNamed
x3
y3

/*
 -- Boolean --
*/
let yes = true
let no = false

let isFourGraterThenFive = 4 > 5

if isFourGraterThenFive {
    print("--> 참")
} else {
    print("--> 거짓")
}

/*
 if 조건 {
    // 조건이 참인 경우 실행할 내용
 } else {
    // 조건이 거짓인 경우 실행할 내용
 }
*/

let a = 5
let b = 10

//if a > b {
//    print("a가 b보다 크다")
//} else {
//    print("b가 a보다 크다")
//}

let name1 = "hanbee"
let name2 = "janny"

let isTwoNameSame = name1 == name2

//if isTwoNameSame {
//    print("두 이름이 같다")
//} else {
//    print("두 이름이 다르다")
//}

let isHanbee = name1 == "hanbee"
let isMale = false

let hanbeeAndFemale = isHanbee && isMale
let hanbeeOrMale = isHanbee || isMale

let greetingMessage: String
//if isHanbee {
//   greetingMessage = "Hello Hanbee!"
//} else {
//    greetingMessage = "Hello Somebody!"
//}

greetingMessage = isHanbee ? "Hello Hanbee!" : "Hello Somebody!"
print(greetingMessage)

/*
 -- Scope --
*/
func calSalary() {
    // 전체 함수 내에서 사용 가능
    var hours = 50
    let payPerHour = 10000
    var salary = 0

    if hours > 40 {
        // extraHours는 if문 안에서만 사용 가능
        let extraHours = hours - 40
        salary += extraHours * payPerHour * 2
        hours -= extraHours
    }

    salary += hours * payPerHour
}

calSalary()

/*
 -- while --
*/
/*
 while 조건 {
    // 조건에 만족하는 동안 수행할 코드
 }
*/

var i = 0
//while i < 10{
//    print(i)
//    i += 1
//}

while i < 10 {
    print("while: \(i)")
    
    if i == 5 {
        break
    }
    
    i += 1
}

i = 0
repeat {
    print("repeat: \(i)")
    i += 1
} while i < 10

/*
 -- for loop --
*/
let closedRange = 0...10
let halfClosedRange = 0..<10

var sum = 0
for i in halfClosedRange {
    print("--> \(i)")
    sum += i
}

print("total sum: \(sum)")

var sinValue: CGFloat = 0
for i in closedRange {
    sinValue = sin(CGFloat.pi/4 * CGFloat(i))
}

let name = "hanbee"
for _ in closedRange {
    print("--> name: \(name)")
}

//for i in closedRange {
//    if i % 2 == 0 {
//        print("--> 짝수: \(i)")
//    }
//}

for i in closedRange where i % 2 == 0 {
    print("--> 짝수: \(i)")
}

for i in closedRange {
    if i == 3 {
        continue
    }
    
    print("--> \(i)")
}

// 중첩 for
for i in closedRange {
    for j in closedRange {
        print("구구단: \(i) * \(j) = \(i*j)")
    }
}

/*
 -- Switch --
*/
let num = 10

switch num {
case 0:
    print("--> 0입니다.")
case 0..<10:
    print("--> 0부터 10 사이의 수 입니다.")
case 10 :
    print("--> 10입니다.")
default:
    print("--> 나머지 입니다.")
}

let pet = "cat"

switch pet {
case "dog", "cat":
    print("--> 집동물이네요!")
default:
    print("--> 잘 모르겠습니다...")
}

let n = 20

switch n {
case _ where n % 2 == 0:
    print("--> 짝수입니다.")
default:
    print("--> 홀수입니다.")
}

let coordinate = (x: 10, y:10)

switch coordinate {
case (0, 0):
    print("--> 원점입니다.")
case (let x, 0):
    print("--> x축입니다. x: \(x)")
case (0, _):
    print("--> y축입니다.")
case (let x, let y) where x == y:
    print("--> x랑 y가 같음! x: \(x), y: \(y)")
case (let x, let y):
    print("--> 좌표 어딘가~~ x: \(x), y: \(y)")
}
