import UIKit
import Foundation

/*
 1. Написать функцию, которая:
 - Будет просто выводить в консоль ”Hello, world!”.
 - Будет принимать аргумент “имя” и выводить в консоль “Hello, имя” (вызов функции
 должен быть следующим - printHi(“Misha”)).
 - Будет принимать аргумент имя и возвращать строку приветствия “Hello! имя”.

 2. Написать функцию, которая принимает две строки и возвращает сумму количества
 символов двух строк.

 3. Написать функцию, которая выводит в консоль квадрат переданного числа.

 4. Создать функции, которые будут суммировать, вычитать, умножать и делить числа
 sum(num1:num2:).

 5. Создать функцию, которая принимает параметры и вычисляет площадь круга.
 6. Создать функцию, которая принимает логический тип “ночь ли сегодня” и возвращает
 строку с описанием времени суток.

 7. Создать функцию, принимающую 1 аргумент — число от 0 до 100, и возвращающую
 true, если оно простое, и false, если сложное.

 8. Создать функцию, принимающую 1 аргумент — номер месяца (от 1 до 12), и
 возвращающую время года, которому этот месяц принадлежит (зима, весна, лето или
 осень).

 9*. Создать функцию, которая считает факториал введённого числа.

 10*. Создать функцию, которая выводит все числа последовательности Фибоначчи до
 введённого индекса. Например fib(n:6) -> 0, 1, 1, 2, 3, 5, 8

 11*. Создать функцию, которая считает сумму цифр четырехзначного числа,
 переданного в параметры функции
 */




//MARK:  1--------------------------------------------------------------
/*
Написать функцию, которая
- Будет просто выводить в консоль ”Hello, world!”.
- Будет принимать аргумент “имя” и выводить в консоль “Hello, имя” (вызов функции
должен быть следующим - printHi(“Misha”)).
- Будет принимать аргумент имя и возвращать строку приветствия “Hello! имя”.
*/

func greetingWorld() {
    print("Hello World")
}
greetingWorld()

func greeting(_ name: String) {
    print("Hello, \(name)")
}
greeting("Masha")

func secondGreeting(with name: String) -> String {
    return "Hello \(name)"
}
secondGreeting(with: "Vlad")

//MARK: 2--------------------------------------------------------------
/*
 2. Написать функцию, которая принимает две строки и возвращает сумму количества
 символов двух строк.
 */

func amountOfCharacters(value1: String, value2: String) -> Int {
    return value1.count + value2.count
}
amountOfCharacters(value1: "car", value2: "dog")

// MARK: 3--------------------------------------------------------------
/*
 3. Написать функцию, которая выводит в консоль квадрат переданного числа.
 */

func findSquare(with value: Int) {
    let square = value * value
    print(square)
}
findSquare(with: 5)

// MARK: 4--------------------------------------------------------------
/*
 4. Создать функции, которые будут суммировать, вычитать, умножать и делить числа
 sum(num1:num2:).
 */

let multiplay: (Int, Int) -> Int = { $0 * $1 }
let sum: (Int, Int) -> Int = { a, b in
    a + b
}

func subtraction(_ a: Int, _ b: Int) -> Int {
    return a - b
}

func division(a: Int, b: Int) -> Int {
    return a / b
}

func amount(a: Int, b: Int, closure: (Int,Int) -> Int) -> Int {
    return closure(a,b)
}

amount(a: 5, b: 5, closure: multiplay)
amount(a: 10, b: 20, closure: sum)
amount(a: 100, b: 20, closure: subtraction(_:_:))
amount(a: 100, b: 2, closure: division(a:b:))


//MARK: 5--------------------------------------------------------------
/*
 5. Создать функцию, которая принимает параметры и вычисляет площадь круга.
 */

func findCircleSquare(radius: Int, pi: Double = 3.14) -> Double {
    let square: Double = pi * Double(radius)
    return square
}
findCircleSquare(radius: 15)

//MARK: 6--------------------------------------------------------------
/*
 Создать функцию, которая принимает логический тип “ночь ли сегодня” и возвращает
 строку с описанием времени суток.
 */

func dayOrNightTest(isDay: Bool) -> String {
    let finalString: String = isDay ? "Now is DAY" : "Now is NIGHT"
    return finalString
}
dayOrNightTest(isDay: false)

//MARK: 7--------------------------------------------------------------
/*
 7. Создать функцию, принимающую 1 аргумент — число от 0 до 100, и возвращающую
 true, если оно простое, и false, если сложное.
 */

func checkDigits(with digit: Int) -> Bool {
    if digit < 0 || digit > 100 {
        print("Введи что-то другое")
    }
    
    if digit <= 1 {
        return false
    }
    
    if digit <= 3 {
        return true
    }
    
    if digit % 2 == 0 {
        return false
    }
    
    for i in 3...Int(Double(digit).squareRoot()) {
        if i % i == 0 {
            return false
        }
    }
    
    return true
}
checkDigits(with: 15)

//MARK: 8--------------------------------------------------------------
/*
 8. Создать функцию, принимающую 1 аргумент — номер месяца (от 1 до 12), и
 возвращающую время года, которому этот месяц принадлежит (зима, весна, лето или
 осень).
 */

enum Seasons: String {
    case winter = "Зима"
    case spring = "Весна"
    case summer = "Лето"
    case autumn = "Осень"
}

func findSeason(with monthNumber: Int) -> String {
    switch monthNumber {
    case 12,1,2:
        return Seasons.winter.rawValue
    case 3...5:
        return Seasons.spring.rawValue
    case 6...8:
        return Seasons.summer.rawValue
    case 9...11:
        return Seasons.autumn.rawValue
    default:
        return "Error"
    }
}
findSeason(with: 9)

//MARK: 9--------------------------------------------------------------
/*
 9*. Создать функцию, которая считает факториал введённого числа.
 */

func factorial(value: Int) -> Int {
    if value == 0 {
        return 1
    } else {
        return value * factorial(value: value - 1)
    }
}
factorial(value: 5)


//MARK: 10--------------------------------------------------------------
/*
 10*. Создать функцию, которая выводит все числа последовательности Фибоначчи до
 введённого индекса. Например fib(n:6) -> 0, 1, 1, 2, 3, 5, 8
 */

func fibonachi(n: Int) -> String {
    guard n >= 0 else {
        print("Введите неотрицательное число")
        return ""
    }

    var sequence = [Int]()
    
    for i in 0...n {
        if i == 0 {
            sequence.append(0)
            print(sequence)
        } else if i == 1 {
            sequence.append(1)
            print(sequence)
        } else {
            sequence.append(sequence[i - 1] + sequence[i - 2])
        }
    }
    let finalString = sequence.map {  String($0) }.joined(separator: ", ")
    print(finalString)
    return finalString
}
fibonachi(n: 6)


//MARK: 11--------------------------------------------------------------
/*
 11*. Создать функцию, которая считает сумму цифр четырехзначного числа,
 переданного в параметры функции
 */

func summIntNumbers(with number: Int, closure: (Int) -> [Int]) -> Int {
    guard number >= 1000 && number <= 9999 else {
        print("Число должно быть четырехзначным")
        return 0
    }
    let list = closure(number)
    let sum = list.reduce(0,+)
    print(sum)
    return sum
}

summIntNumbers(with: 1234) { number in
    let numberString = String(number)
    let digits = numberString.compactMap { $0.wholeNumberValue }
    return digits
}
