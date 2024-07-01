import UIKit

/*
 Создать объект “Школа” со свойствами: массив учеников, название школы, адрес (адрес -
 новый объект с координатами x, y, street name) и директор (у директора новые поля:
 experience, рейтинг. Директор наследуется от класса Person (name:surname:age)).

 У ученика хранить имя, фамилию, номер класса, кортеж “название предмета - оценка”. Ученик
 наследуется от Person.

 У ученика сделать конструктор со всеми параметрами, добавить дефолтные значения к
 некоторым из них.

 Написать метод для ученика, выводящий информацию о студенте в формате
 “Фамилия Имя (Класс)
 предмет: оценка
 предмет: оценка”.

 Написать метод для школы, который выводит информацию о школе.

 Уделите особое внимание выбору, что использовать: класс или структуру, var или let, private, public

 ————
 Объект здесь имеется ввиду либо структура либо класс, выбирайте аккуратно что использовать, класс или структуру. Подсматривайте в плейграунд c урока, находите похожие патерны.

 */
enum Lessons: String {
    case maths
    case history
    case geography
    case english
    case music
    case economics
}


class Person {
    let name: String
    let surname: String
    let age: Int
    
    init(name: String, surname: String, age: Int) {
        self.name = name
        self.surname = surname
        self.age = age
    }
}

// У ученика хранить имя, фамилию, номер класса, кортеж “название предмета - оценка”. Ученик наследуется от Person.
// У ученика сделать конструктор со всеми параметрами, добавить дефолтные значения к некоторым из них.
/*
 Написать метод для ученика, выводящий информацию о студенте в формате
 “Фамилия Имя (Класс)
 предмет: оценка
 предмет: оценка”.
 */
final class Student: Person {
    let classNumber: Int
    let infoStudent: (String, Int)
    
    init(classNumber: Int = 7, infoStudent: (String, Int), name: String, surname: String, age: Int) {
        self.classNumber = classNumber
        self.infoStudent = infoStudent
        super.init(name: name, surname: surname, age: age)
    }
    
    func showStudent() -> String {
        return "Student \(name) \(surname), class: \(classNumber) has mark \(infoStudent.1) for \(infoStudent.0)"
    }
}

let student1 = Student(classNumber: 10, infoStudent: (Lessons.economics.rawValue, 5), name: "Joe", surname: "Leston", age: 22)
let student2 = Student(infoStudent: (Lessons.economics.rawValue, 5), name: "Ira", surname: "Shelton", age: 32)
let valueToPrint = student1.showStudent()
print(valueToPrint)

/*
 Создать объект “Школа” со свойствами: массив учеников, название школы, адрес (адрес -
 новый объект с координатами x, y, street name) и директор (у директора новые поля:
 experience, рейтинг. Директор наследуется от класса Person (name:surname:age)).
 */
// Написать метод для школы, который выводит информацию о школе.

struct School {
    let students: [Student]
    let schoolName: String
    let schoolAdress: Adress
    
    func showSchoolInfo() {
        print("In our school \(schoolName) we have \(students.count) students. We based in \(schoolAdress.x), \(schoolAdress.y), street: \(schoolAdress.streetName)")
    }
    
    func showStudentDetailInfo() {
        let studNames = students.map { $0.name }
        print("In our school we have \(students.count) students. There are: \(studNames), has:")
    }
}


struct Adress {
    let x: Double
    let y: Double
    let streetName: String
}

let school1: School = School(students: [student1, student2], schoolName: "TestSchool", schoolAdress: Adress(x: 23123.2, y: 231123.2, streetName: "Prospekt Lenina"))
school1.showSchoolInfo()
school1.showStudentDetailInfo()

class Director: Person {
    let experience: Int
    let rate: Double
    
    init(experience: Int, rate: Double, name: String, surname: String, age: Int) {
        self.experience = experience
        self.rate = rate
        super.init(name: name, surname: surname, age: age)
    }
}



