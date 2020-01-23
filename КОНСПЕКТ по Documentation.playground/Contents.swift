
//ARRAY. DOCUMENTATION.
//Use the first and last properties for safe access to the value of the array’s first and last elements. If the array is empty, these properties are nil.
let array4 = [6,2,7,4,9]
if let firstElement = array4.first, let lastElement = array4.last {
    print(firstElement,lastElement)
}
let array5 = [Int]()
if let firstElement2 = array5.first, let lastElement2 = array5.last {
    print(firstElement2,lastElement2)
}
//добавление элементов
var students = ["Ben", "Ivy", "Jordell"]
students.append(contentsOf: ["Max", "Ann"])
students.insert(contentsOf: ["Maya", "John"], at: 2)
//удаление элементов
students.removeSubrange(1...2)
//
students.isEmpty
students.count
students.capacity
//
students.first
students.last
students[2...3]
students[3..<4]
students[3..<students.count-1]
students.randomElement()!
//let randomName = students.randomElement(using: &myGenerator)!
//Use of unresolved identifier 'myGenerator'
students.randomElement()!
students.replaceSubrange(0...1, with: ["Ivy", "Kate"])
//сложение массивов операторами сложения
//удаление последнего элемента с результатом nil в случае отсутствия значения
students.popLast()
//
students.contains("Ann")
students += ["Kate"]
students.firstIndex(of: "Kate")
students.lastIndex(of: "Kate")
//min max - в алфавитном порядке для string
students.min()
students.max()
students.prefix(2)
students.suffix(2)

// трансформация/ изменение кроме map, return, filter
//flatMap !!! - в одну строку
let nums = [1,2]
let mapped = nums.map{ Array(repeating: $0, count: $0)}
let flatMapped = nums.flatMap{ Array(repeating: $0, count: $0)}
print(mapped)
print(flatMapped)

//compactMap !!! - пропускает значения nil, выводит только значения
let possibleNumbers = ["1", "2", "three", "///4///", "5"]
let mapped2: [Int?] = possibleNumbers.map { str in Int(str) }
// [1, 2, nil, nil, 5]
let compactMapped: [Int] = possibleNumbers.compactMap { str in Int(str) }
// [1, 2, 5]

// итерация методами без for in
nums.forEach{(num) -> Void in
    print (num)
}
// вывод по элементам
for (number, letter) in "Sky".enumerated() {
    print (number, letter)
}
// ПЕРЕСТАНОВКА
students.sort()
students.sort(by: > )
//переворот
students.reverse()
//встряхнуть
students.shuffle()

//func split(separator: Element, maxSplits: Int, omittingEmptySubsequences: Bool) -> [ArraySlice<Element>]
//func joined() -> FlattenSequence<Array<Element>>


//------------------------------------------------------------------------------------------------------------------------------------------



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
 3)inVit(Double)
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
