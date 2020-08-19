import UIKit

/*
 -- Class --
*/

struct PersonStruct {
    var firstName: String
    var lastName: String
    
    var fullName: String {
        return "\(firstName) \(lastName)"
    }
    
    mutating func uppercaseName() {
        firstName = firstName.uppercased()
        lastName = lastName.uppercased()
    }
}

class PersonClass {
    var firstName: String
    var lastName: String
    
    init(firstName: String, lastName: String) {
        self.firstName = firstName
        self.lastName = lastName
    }
    
    var fullName: String {
        return "\(firstName) \(lastName)"
    }
    
    func uppercaseName() {
        firstName = firstName.uppercased()
        lastName = lastName.uppercased()
    }
}

var personStruct1 = PersonStruct(firstName: "Hanbee", lastName: "Son")
var personStruct2 = personStruct1

var personClass1 = PersonClass(firstName: "Hanbee", lastName: "Son")
var personClass2 = personClass1

personStruct2.firstName = "Hansol"
personStruct1.firstName
personStruct2.firstName

personClass2.firstName = "HanGuang"
personClass1.firstName
personClass2.firstName

personClass2 = PersonClass(firstName: "Dami", lastName: "Park")
personClass1.firstName
personClass2.firstName

personClass1 = personClass2
personClass1.firstName
personClass2.firstName


/*
 -- 상속 --
*/
struct Grade {
    var letter: Character
    var points: Double
    var credits: Double
}

class Person {
    var firstName: String
    var lastName: String
    
    init(firstName: String, lastName: String) {
        self.firstName = firstName
        self.lastName = lastName
    }
    
    func printMyName() {
        print("My name is \(firstName) \(lastName)")
    }
}

class Student: Person {
    var grades: [Grade] = []
}

let jay = Person(firstName: "Jay", lastName: "Lee")
let jason = Student(firstName: "Jasson", lastName: "Park")

jay.firstName
jason.firstName

jay.printMyName()
jason.printMyName()

let math = Grade(letter: "B", points: 8.5, credits: 3)
let history = Grade(letter: "A", points: 10.0, credits: 3)

jason.grades.append(math)
jason.grades.append(history)

jason.grades.count

class StudentAthelete: Student {
    var minimumTrainingTime: Int = 2
    var traningTime: Int = 0
    
    func train() {
        traningTime += 1
    }
}

class FootballPlayer: StudentAthelete {
    var footballTeam = "FC Swift"
    
    override func train() {
        traningTime += 2
    }
}

var athelete1 = StudentAthelete(firstName: "Yuna", lastName: "Kim")
var athelete2 = FootballPlayer(firstName: "Heung", lastName: "Son")

athelete1.firstName
athelete2.firstName

athelete1.grades.append(math)
athelete2.grades.append(math)

athelete1.minimumTrainingTime
athelete2.minimumTrainingTime

athelete2.footballTeam

athelete1.train()
athelete1.traningTime

athelete2.train()
athelete2.traningTime

// upper casting
athelete1 = athelete2 as StudentAthelete
athelete1.train()
athelete1.traningTime

// down asting
if let son = athelete1 as? FootballPlayer {
    print("--> team: \(son.footballTeam)")
}
