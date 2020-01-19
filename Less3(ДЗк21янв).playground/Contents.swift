import UIKit

//if
var firstItem = 1
var secondItem = 1
if firstItem > secondItem {
    print (">")
} else { if firstItem<secondItem {
    print ("<=")
} else {
    print ("=")
    }
}
//guard !!! усли true -выполняется код ниже, иначе прерывается выполнение нижнего кода, выполняется только то, что в else
//нужно прервать исполнение. пример

func function() {
    guard firstItem != secondItem else {
        print ("wrong")
        return
    }
    print ("true")
}
function ()

// ternary operator
let constBoolean = (firstItem == secondItem) ? true : false
let constBoolean2 = (firstItem == secondItem) ? 10 : 20

//switch
var booleanVarForSwitch = firstItem == secondItem
switch booleanVarForSwitch {
case true: print ("true")
case false: print ("false")
}
var switchInteger = 10
switch switchInteger {
case 1: print ("1")
case 10: print ("10")
default: print ("default")
}

// РАСПАКОВКА OPTIONAL
// 1)OPTIONAL BINDING
var optionalInt: Int?
func printNonOptional (value: Int) {
    print (value)
}
//printOptional(value: optionalInt)

if let nonOptional = optionalInt {
    printNonOptional(value: nonOptional)
} else {
    print ("no value")
}
// 2)UNWRAPPING with GUARD  !!!!!
// optionalInt = 11
func guardlet() {
    guard let nonOptional = optionalInt else {
        return
    }
    nonOptional
}
guardlet ()

// 3)OPTIONAL CHAINING !!!!
optionalInt?.distance (to:10)

//4)Nil-coalescing operator !!!
//5) Forced unwrapping


// СТРУКТУРЫ, КЛАССЫ, ПРОТОКОЛЫ
protocol GenericProtocol {
    var genericProperty: Int {get set}
}

struct CustomStruct: GenericProtocol {
    var genericProperty: Int
    var firstVariable: Int
}
let myStructInstance = CustomStruct(genericProperty: 1, firstVariable: 10)

class CustomClass: GenericProtocol {
    var genericProperty: Int = 0
     var firstVariable: Int = 10
}
let myClassInstance = CustomClass()

//color не может быть по умолчанию и не может быть optional, а значит нужно initial value:
class Vehicle: GenericProtocol {
    var genericProperty: Int = 0
    let canMove = true
}
class Car: Vehicle {
    var color: Int
    var trunk: String?
    init (inputColor: Int) {
        color = inputColor
    }
}
let myCar = Car(inputColor: 111)
myCar.color
myCar.trunk
myCar.canMove
myCar.genericProperty = 10000
//print (myCar is Vehicle)
var yourCar = myCar
print (yourCar.color)
print (yourCar.genericProperty)
yourCar.color = 123
print (yourCar.color)
yourCar = Car(inputColor: 123)
print (yourCar.color)
yourCar.genericProperty = 0
print (yourCar.genericProperty)
myCar.genericProperty
//---------------------------------------------------------------------------------------------------

//: ## Задание:
//: * [App Development with Swift](https://books.apple.com/by/book/app-development-with-swift/id1465002990) **Units 1.1-1.4** - Обязательно + тесты  ++++
//: * Начать Unit 2  ++++
//: * Подготовить конспект по основным методам типа Int: https://developer.apple.com/documentation/swift/int   ++++

//: ### Advanced:
//: * https://www.hackerrank.com/ - начать хоть 1 челендж
//: * Самостоятельно изучить материал о string: https://docs.swift.org/swift-book/LanguageGuide/StringsAndCharacters.html   ++++
// Ознакомится с исходным кодом типа Optional

//-------------------------------------------------------------------------------------------------------
/* КОНСПЕКТ ПО ОСНОВНЫМ МЕТОДАМ INT
 
 Converting Floating-Point Values
 1)init(:) Creates an integer from the given floating-point value, rounding toward zero. Any fractional part of the value passed as source is removed.
 let x = Int(21.5)
 // x == 21
 2)init(exactly:)
 Creates an integer from the given floating-point value, if it can be represented exactly.
 let x = Int(exactly: 21.0)
 // x == Optional(21)
 let y = Int(exactly: 21.5)
 // y == nil
 3)init(Double)
 Creates an integer from the given floating-point value, rounding toward zero.
 4)init(Float)
 Creates an integer from the given floating-point value, rounding toward zero.
 
 Converting Strings
 1)init?(String)
 Creates a new integer value from the given string.
 let x = Int("123")
 // x == 123
 
 Creating a Random Integer
 1)static func random(in: Range<Int>) -> Int
 Returns a random value within the specified range.
 for _ in 1...3 {
     print(Int.random(in: 1..<100))
 }
 2)static func random(in: ClosedRange<Int>) -> Int
 Returns a random value within the specified range.
 
 Calculations
 1)func negate()
 Replaces this value with its additive inverse.
 2)func quotientAndRemainder(dividingBy: Int) -> (quotient: Int, remainder: Int)
 Returns the quotient and remainder of this value divided by the given value.
 3)func isMultiple(of: Int) -> Bool
 Returns true if this value is a multiple of the given value, and false otherwise.
*/
let w = 12
w.isMultiple(of: 6)
var k = 8
k.negate()
w.quotientAndRemainder(dividingBy: 3)
w.addingReportingOverflow(5)
let r = w.multipliedFullWidth(by: 2)
w.distance(to: 10)
w.advanced(by: 10)
let list = [3,8]
list.min()
list.max()
2 &+ 4
//---------------------------------------------------------------------------------

// ПРАКТИКА
// 1. Создать 2 константы типа Int, затем сравнить их значения и вывести в консоль результат сравнения в виде: "const1 > const2".
let const1 = 10
let const2 = 5
if const1 > const2 {
print ("\(const1) > \(const2)")
}
if const1>const2 {
    print ("const1 > const2")
}

// 2. Создать несколько переменных и вывести в консоль результат их сложения.
var x = 2
var y = 6
var z = 2
var sum = x+y+z
print (sum)
print (x+y+z)

// 3. Составить алгоритм увеличения всех трех ранее созданных переменных на 5,если среди них есть хотя бы две равные. В противном случае выдать ответ «равных нет».
if x==y || y==z || x==z {
    x *= 5
    y *= 5
    z *= 5
} else {
    print ("равных нет")
}

// 4. Создать Optional-переменнтую, затем проверить ее на nil: если есть значение - вывести его на экран, если нет - вывести на экран фразу "empty "

//ВАР 1 - forced unwrapping
var text: String? = "\u{2665}"
if text != nil {
    print (text!)
} else {
    print ("empty")
}

//ВАР 2 - optional binding
var text2: String? = "\u{2665}"
if text != nil {
   if let textNonOptional = text2 {
        print (textNonOptional)
    }
}
else {
    print ("empty")
}

//ВАР 3 - unwrapping with guard
//условие должно быть true, чтобы код после guard statement выполнился

var text5: String? = "\u{2665}"
func unwrapping() {
  guard let textNonOptional3 = text5 else {
    print ("empty")
            return
        }
  print (textNonOptional3)
    }
unwrapping()


//ВАР 4 - nil-coalescing operator a??b
var text4: String? = "\u{2665}"
let result = text4 ?? "empty"
print (result)


//-------------------------------------------------------------------------------
//ДОПОЛНИТЕЛЬНО про OPTIONAL:

//OPTIONAL CHAINING
var numbers: Array? = [1,5]
numbers?.count

//nil-coalescing operator a??b (с конвертацией)
let text6: String? = nil
let result2 = text6 ?? String(25)
print (result2)

//ДОПОЛНИТЕЛЬНО: GUARD
//условие должно быть true, чтобы код после guard statement выполнился

var scores = [20,25]
func doesItContain () {
guard scores.contains(25) else {
    return
}
print ("The array contains 25")
}
doesItContain()

//ДОПОЛНИТЕЛЬНО: TERNARY OPERATOR
let answerForUser = scores.contains(25) ? "Yes. The array contains 25": "No. The array contains 20"

////ДОПОЛНИТЕЛЬНО: ENUM + SWITCH
enum seasons {case winter, spring, summer, autumn}
let actualSeason = seasons.summer
switch actualSeason {
case .winter: "It's snowy"
case .spring: "It's warm"
case .summer: "It's hot"
case .autumn: "It' s raining"
}








































































































