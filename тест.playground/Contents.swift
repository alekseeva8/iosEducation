/*:
 1.
 - Объявите одну константу x типа Int
 - Объявите переменную y типа Double
 - Объявите переменную sum типа Optional-Int  без начального значения
 - Присвойте sum значение равное сумме x и y
 */

let x = 10
var y = 20.0
var sum: Int?
sum = x+Int(y)

/*:
 2. Разверните опционал sum и выведите в консоль. Обратите внимание чтобы в выводе отсутствовало Optional()
 */
if let sumNonOptional = sum {
    print(sumNonOptional)
}

/*:
 3. Выведите в консоль четные числа от 2 до 2000
 */
let array = Array(2...2000)
for element in array {
    if element%2 == 0 {
        print(element)
    }
}

/*:
 4. Объявите новый тип ColorTuple, который является tuple из четырех компонентов (3 для цвета и один для прозрачности)
 Объявите переменную myColor типа ColorTuple?
 Задайте ей значение
 */
struct ColorTuple {
    var color1: Int = 0
    var color2: Int = 0
    var color3: Int = 0
    var transperancy: Double = 0.0
}
var myColor = ColorTuple(color1: 0, color2: 128, color3: 0, transperancy: 0.03)


/*:
 5. Объявите функцию, которая получет на вход 3 параметра типа Int и возвращает результат типа ColorTuple
 */
func function(color1: Int,color2: Int,color3: Int) -> ColorTuple {
    let myColor2 = ColorTuple()
    return myColor2
}

/*:
 
 7. Напишите функцию, которая получает на вход Имя и Фамилию человека и возвращает tuple (String, String) с именем и фамилией
 */
func writing(firstName: String, lastName:String) -> (String,String) {
    return (firstName, lastName)
}

/*:
 8. Напишите функцию, которая получает на вход массив [String?] и возвращает массив [String], в котором выброшены все nil значения из первого массива
 Например из массива
 ["a", nil, "b"] получится массив ["a", "b"]

 */

