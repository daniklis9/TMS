import UIKit
/*
 Создайте два массива. Первый от 0 до 14, второй от 14 до 30. Объедините их в один
 массив.
 Создать функцию, которая принимает массив int. Возвести все Int в квадрат.
 Возвратить новый массив.
 Создать функцию, которая принимает массив int. Возвратить новый массив с только
 четными элементами.
 Написать 3 примера с использованием .map
 Написать 2 примера с использованием .filter
 Написать 2 примера с использованием .compactMap
 Написать 2 примера с .sort
 Написать 2 примера с .sorted

 Базовое дз, чуть позже скину еще по словорям
 */


let list1: [Int] = Array(0..<14)
let list2: [Int] = Array(14..<30)
let list3 = list1 + list2

func squareNumber(with numbers: [Int]) -> [Int] {
    numbers.map { i in
        i * i
    }
}

func checkPercent(numbers: [Int]) -> [Int] {
    numbers.filter { $0 % 2 == 0}
}

//  Написать 3 примера с использованием .map
var number: [Int] = [5,6,7,8,9]
number.map { i in
    i + i
}

let newList = number.map {$0 > 7}
print(newList)

number.map{ String($0)}

// Написать 2 примера с использованием .filter
var secondList: [Int] = [1,2,3,4,5,6,7,8,9,10]
let array1 = secondList.filter { i in
    return i < 5
}
let array2 = secondList.filter {$0 % 2 == 0}
print(array1)
print(array2)

// Написать 2 примера с использованием .compactMap
let optionalNumbers: [Int?] = [10, 20, nil, 40, nil, 60]
let myNumbers = optionalNumbers.compactMap { $0 }

var stringNumbers: [String] = ["1.0", "2.0", "test"]
stringNumbers.compactMap {Double($0)}

// Написать 2 примера с .sort
secondList.sort()
stringNumbers.sort(by: {$0 > $1})

//Написать 2 примера с .sorted
stringNumbers.sorted()
stringNumbers.sort(by: <)
