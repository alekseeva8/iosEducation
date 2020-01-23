// COLLECTIONS

//варианты инициализации массива []
var intArray: Array<Int> = []
var intArray2 = Array<Int>()
var intArray3: [Int] = []
//краткая форма предпочтительнее

//ч/з subscript получаем доступ к значению
let constArray = [1, 3, 5, 7, 10]
var item = constArray[1]

//опасно выходить за границы массива - error. всегда проверять кол-во элементов! в массиве
let count = constArray.count
var nextElement = constArray[count-1]
for item in constArray {
    print (item)
}
//ВАЖНЫЕ МЕТОДЫ !!!
constArray.first
constArray.last

//Updating elements with SUBSCRIPTS
var varArray = [Int]()
//Метод map!!! трансформирует каждый элементю принимает замыкания в качестве аргументов

//Добавление. Удаление
var newArray = [Int]()
//newArray[0] = 1
newArray.append(2)
newArray.insert(3, at: 1)
newArray.removeAll()

// итерация
constArray.forEach {item in
    print(item)
}


//DICTIONARY. пользоваться безопасною не crash
//полная инициализация
let constDictionary: Dictionary<Int,Int> = [:]
//краткая форма инициализации
var carProperties = ["color": 123, "doors": 4, "type":1]
//инициализация пустого dictionary
var car = [String:Int]()
var car2 = Dictionary<String,Int>()
// изменения
carProperties["windows"]
//нужно проверять не nil ли !!!
//if let nonNil = carProperties["color" {...}
//var dictItem = carProperties["color"]


// добавление
carProperties["maxSpeed"] = 1000
carProperties.removeValue(forKey: "maxSpeed")
//carProperties.removeAll()

// итерация
carProperties.forEach { (key, value) in
    print(value)
}

//TUPLE. близки к словарю! нельзя итерировать. но как ключ исп-ся номер элемента: 1ыйб 2ой.. это недоструктура
var tuple = (integer: 1, double: 2.1, mystring: "ss")
var tupleItem  = tuple.0

//typealias
typealias MyCustomTupleType = (integer: Int, double: Double, mystring: String)

// FUNCTIONS
func functionName2 (param: Int) -> Void {
    
}
//let x = functionName2(param: 1)
//Constant 'x' inferred to have type 'Void', which may be unexpected

func functionName (param: Int, param2: Double) -> Int {
    return 1
}
let variable = functionName(param: 1, param2: 1.5)

func color (_ red: Int, _ green:Int) {
    
}
color(1,1)

// в случае nil задействует дефолтное значение !!!!!!  ВНИМАНИЕ ЕЩЕ РАЗ
//func color22 (_ red: Int? = 1, _ green:Int)  -> Int? {
//    return red+green+blue
//}


struct CustomStruct {
    private func shortAction() {
    }
    func internalFunc() {
        shortAction()
    }
}
var cmn = CustomStruct()
//customStructVar.shortAction()


//CLOSURE !!!!!
var customClosure: (Int, String) -> Void = {
    print("closure")
    print($0)
     print($1)
}
    
var newClosure = customClosure
newClosure(1, "Hello")
//------------------------------------------------------------------------------




//ПРАКТИКА
//1. Write a Swift program to check if two given arrays of integers have 0 as their first element.
let array1 = [2, 15, 29, 2]
let array2 = [0, 4, 18, 3]
if array1[0] == 0 {
    print("The 1st element of array1 is 0.")
}
if array2[0] == 0 {
    print("The 1st element of array2 is 0.")
}

//2. Write a Swift program to test if an array of integers does not contain a 3 or a 5.
if array1.contains(3) || array1.contains(5) {
    print ("The array contains 3 or 5.")
}
else {
    print ("The array doesn't contain 3 or 5.")
}

//3. Write a Swift program to check whether the first element and the last element of a given array of integers are equal.
if array1[0] == array1[array1.count-1] {
    print("The first and the last element of the array are equal.")
}

//4. Write a Swift program that creates Array, adds an item, remove item, modify item and then prints size of the array.
var arrayOfInt = [Int]()
arrayOfInt.append(7)
arrayOfInt.count
arrayOfInt += [3, 8, 9]
arrayOfInt.insert(5, at: 4)
arrayOfInt[1] = 12
arrayOfInt.remove(at: 3)
arrayOfInt += array1
print(arrayOfInt.count)

//5. Write a Swift program that creates Dictionary, adds an item, remove item, modify item and then prints size of the Dictionary.
var dictionary = [String: Int]()
dictionary = ["house": 130, "bank": 124, "post office": 118]
dictionary["shop"] = 136
//print(dictionary)
//print(dictionary)
// почему распечатывает в одном и том же порядке, не как в set ??
dictionary["bank"] = nil
dictionary.removeValue(forKey: "post office")
print (dictionary.count)
//----------------------------------------
//ДОПОЛНИТЕЛЬНО: функция "уточнить значение"
dictionary.updateValue(126, forKey: "bank")
dictionary.updateValue(124, forKey: "bank")
//----------------------------------------


//6. Write a Swift program that creates Set, adds an item and then prints size of the Set.
//var sizes = Set<String>()
//var sizes: Set = ["XS", "S", "M", "L", "XL"]
var sizes: Set<String> = ["XS", "M", "L"]
sizes.insert("S")
sizes.insert("XL")
//print(sizes)
//sizes.sorted()
print(sizes.count)


//7. Create 2 arrays, and merge them.
let arrayToMerge1: [Character] = ["a", "b", "c"]
let arrayToMerge2: [Character] = ["d", "e", "f", "g"]
var alphabet = arrayToMerge1 + arrayToMerge2
//-----------------------------------------------------------
//ДОПОЛНИТЕЛЬНО
let container2 = [arrayToMerge1, arrayToMerge2]
let secondArray = container2[1]
let lastElementOfSecondArray = container2[1][secondArray.count-1]
//____________________________________________________________



//8. Write a closure to sum 2 integers, pass closure as argument to function, where return the result of calling that closure.
//Написать замыкание(closure), задача которого складывать 2 полученных аргумента типа Int и вернуть его или вывести в консоль.

let sumClosure = { (integer1: Int, integer2: Int) -> Int in
    return integer1+integer2
}
sumClosure(1,6)

// либо (Void можно опустить)
let sumClosure2 = { (int1: Int, int2: Int) in
    print(int1+int2)
}
sumClosure2(1,6)






//----------------------------------------------------------------------
//CLOSURE (ДОПОЛНИТЕЛЬНО)
//сравнение замыкания и функции
func forwards(name1: String, name2: String) -> Bool {
    print(name1)
    print(name2)
    return name1 < name2
}
forwards(name1: "Alena", name2: "Ira")

var names = ["Alena", "Sofia", "Lena", "Sveta"]
let sortedCollection1 = names.sorted(by: forwards)
print(sortedCollection1)

//ПЕРЕДАЧА ЗАМЫКАНИЯ В ФУНКЦИЮ: полная запись closure
let sortedCollection2 = names.sorted {(firstName, secondName) -> Bool in
    print(firstName)
    print(secondName)
    return firstName < secondName
}
print(sortedCollection2)

//ПЕРЕДАЧА ЗАМЫКАНИЯ В ФУНКЦИЮ: краткая запись closure (опущены параметры, return type Bool, in keyword)
let sortedCollection3 = names.sorted {
    print($0)
    print($1)
    return $0 < $1
}
print(sortedCollection3)


//CLOSURE AS AN ARGUMENT IN COLLECTION FUNCTIONS:

// MAP
let testScores = [65, 80, 88, 90, 47]
//полная запись
let newTestScore = testScores.map{(score) -> Int in
    return score + 1
}
//краткая запись
let newTestScore2 = testScores.map{
    $0 + 1
}

//FILTER
let schoolSubjects = ["Math", "Computer Science", "Gym", "English", "Biology"]
schoolSubjects.filter{(schoolSubject: String) -> Bool in
    schoolSubject.count > 4
}
//или кратко:
schoolSubjects.filter{
    $0.count > 4
}

//REDUCE
let damageTaken = [25, 10, 15, 30, 20]
damageTaken.reduce(100){
    $0 + $1
}

//---------------------------------------------------------------------


























































































