
// SOCK MERCHANT

func sockMerchant(numOfSocks: Int, colors: [Int]) -> Int {
    var totalNumberOfPairs = 0
    
    //функция подсчета пар (массив носков одного цвета разбивается на пары)
    func pairCountingIn(colorsFiltered:[Int]) -> Int {
        totalNumberOfPairs += colorsFiltered.count/2
        return totalNumberOfPairs
    }
    //находим, какие цвета есть "в куче носков" (arrayWithUniqueColors-массив уникальных значений цветов)
    let setWithUniqueColors = Set(colors)
    let arrayWithUniqueColors = Array(setWithUniqueColors)
    
    //функция принимает массив носков одного цвета. а он, в свою очередь, находится как отфильтрованный массив colors
    //вызов функции на каждый уникальный цвет
    for colorUnique in arrayWithUniqueColors {
         pairCountingIn(colorsFiltered: colors.filter { $0 == colorUnique})
    }

    return totalNumberOfPairs
}
sockMerchant(numOfSocks: 9, colors: [10,20,20,10,10,30,50,10,20])
sockMerchant(numOfSocks: 7, colors: [1,2,1,2,1,3,2])


