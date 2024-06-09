import UIKit
/*
Такс, для тех, кто не хочет ждать записи и уже начать делать ДЗ
1. Создать новый Playground
2. Написать переменные и константы всех базовых типов данных: Int, Bool, Float,
Double, String. У чисел вывести их минимальные и максимальные значения (Int8/16…
UInt…), а у строки – количество символов.
3. Написать различные выражения с приведением типа. Минимум 8 выражений.
4. Произвести различные вычисления с математическими операторами (умножение,
деление, сложение, вычитание). Выводить результат в консоль в таком виде: 3
+ 2 = 5 (использовать интерполяцию строк).
5. С помощью if-else необходимо вывести в консоль, ночь ли сегодня (isNight).
6. Дана строка, сделать копию этой строки. Вывести копию строки в консоль. Помним,
что строка – это коллекция символов, по которым можно "пробегаться". Решение let
str2 = str1; print(str2) не принимается.
7*. Сделать проверку: является ли число четным: 13, 2, 20, 21, 76.
8*. В переменной day лежит какое-то число от 1 до 31 (вы задаете сами любое).
Определить, в какую декаду месяца попадает это число (в первую, вторую или
третью).
9*. Дана строка, состоящая из символов, например, “bbppeeyy”
. Проверить, что
первым символом этой строки является буква “a” (или любая другая). Если это так –
вывести 'да', в противном случае -
‘нет’
. Затем поменяйте строку, чтобы условие
соблюдалось. Поэкспериментируйте с разными строками.
10*. Вывести таблицу умножения в консоль с помощью циклов for in.
*/


// MARK: Task 2
let string1: String = "Test String"
var testInt: Int = 10
testInt = 9

var boolValue: Bool = false
boolValue = true

let testFloat: Float = 54.2
let testDouble: Double = 3.14

let minInt = Int.min
let maxInt = Int.max

let amountCharacters = string1.count

// MARK: Task 3

let intToFloat = Float(testInt)
let intToString = String(testInt)
let floatToDouble = Double(intToFloat)
let intToDouble = Double(testInt)
let doubleToString = String(intToDouble)



// MARK: Task 4
let value1 = 5
let value2 = 100

let summ = value1 + value2
let multiplication = value1 * value2
let division = value2 / value1
let subtraction = value2 - value1

let commonString = " Сумма составляет \(summ),\n 5 помноженное на 100 будет \(multiplication),\n если 100 разделить на 5 получится - \(division),\n а если от 100 отнять 5 получится \(subtraction)"
print(commonString)




// MARK: Task 5
var isNight: Bool = false
if isNight {
    print("Сейчас ночь")
} else {
    print("Сейчас день")
}

isNight = true

if isNight {
    print("Сейчас ночь")
} else {
    print("Сейчас день")
}

isNight ? print("Сейчас ночь!!!") : print("Сейчас день!!!")




// MARK: Task 6
let string2 = string1
for element in string2 {
    print(element)
}




// MARK: Task 7
let intList: [Int] = [13, 2, 20, 21, 76]

for element in intList {
    print(element % 2 == 0 ? "\(element) - четное число" : "\(element) - нечетное число" )
}



// MARK: Task 8
let day = 10

switch day {
case 0...10:
    print("День в первой декаде")
case 11...20:
    print("День во второй декаде")
case 21...31:
    print("День в третьей декаде")
default:
    break
}

// MARK: Task 9
let anothertestString: String = "bbppeeyy"
anothertestString.first == "b" ? print("Да") : print("Нет")

// MARK: Task 10
let testList = [1,2,3,4,5,6,7,8,9,10]

for element in testList {
    print("Таблица умножения на: \(element)")
    for secondElement in testList {
        print("\(element) умножить на \(secondElement) = \(secondElement * element)")
    }
}
// второй вариант
testList.forEach { element in
    print("Таблица умножения на: \(element)")
    testList.forEach { secondElement in
        print("\(element) умножить на \(secondElement) = \(secondElement * element)")
    }
}
