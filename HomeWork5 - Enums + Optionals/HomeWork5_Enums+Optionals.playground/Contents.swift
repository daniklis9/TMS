import UIKit

/*
 Создать enum с временами года.

 Написать функцию, которая будет принимать номер месяца (Int) и возвращать enum
 с временем года этого месяца.

 Написать метод, который принимает variadic parameter String?. Метод возвращает
 количество nil объектов и печатает в консоль одну строку всех объединенных не nil
 объектов.

 Написать мини конспект по работе с optional и зачем он нужен. Конспект должен
 содержать все способы извлечения опционала со своими примерами.
 */

enum Seasons {
    case winter
    case spring
    case summer
    case autumn
}

func checkSeason(with numberOfmonth: Int) -> Seasons? {
    switch numberOfmonth {
    case 12,1,2:
        return .winter
    case 3...5:
        return .spring
    case 6...8:
        return .summer
    case 9...11:
        return .autumn
    default:
        return nil
    }
}
checkSeason(with: 10)

/*
 Написать метод, который принимает variadic parameter String?. Метод возвращает
 количество nil объектов и печатает в консоль одну строку всех объединенных не nil
 объектов.
 */

func checkVariadicParamenr(listString: String?...) -> Int {
    var counter: Int = 0
    var commonString: String = ""
    for i in listString {
        if let i = i {
            commonString.append(i)
        } else {
            counter += 1
        }
    }
    print(commonString)
    return counter
}

checkVariadicParamenr(listString: "Say", nil, " Test", nil, nil, " Hi")

//MARK: КОНСПЕКТ ПО ОПЦИОНАЛАМ------------------------------------------

/*
 1. Использование if let и guard let
 if let

 if let позволяет безопасно распаковать опциональное значение.
 */

var optionalString: String? = "Hello, Swift!"

if let unwrappedString = optionalString {
    print(unwrappedString) // "Hello, Swift!"
} else {
    print("The string is nil.")
}

/*
 guard let
 guard let используется для раннего выхода из функции, если опционал nil.
 */

func printString(_ optionalString: String?) {
    guard let unwrappedString = optionalString else {
        print("The string is nil.")
        return
    }
    print(unwrappedString)
}

printString("Hello, Swift!") // "Hello, Swift!"
printString(nil)

/*
 Использование ! (Force Unwrapping)
 */
//let optionalString: String? = "Hello, Swift!"

print(optionalString!) // "Hello, Swift!"

/*
 Использование ?? (Nil-Coalescing Operator)
 Предоставляет значение по умолчанию, если опционал nil.
 */

optionalString = nil
let unwrappedString = optionalString ?? "Default Value"
print(unwrappedString) // "Default Value"

/*
 Использование switch
 Можно использовать switch для проверки и извлечения значений из опционала.
 */

optionalString = "Hello, Swift!"
switch optionalString {
case .some(let value):
    print(value) // "Hello, Swift!"
case .none:
    print("The string is nil.")
}



