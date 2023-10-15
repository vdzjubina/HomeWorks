import UIKit

//MARK: Exercise 1
/*
 Exercise 1
 Declare myTeam as Girls or Boys.
 Create a Dictionary resultsOfGames where Key contains teamName as String and Value of two [String] results.
 Print the output, for example:
 Girls against Brooklyn Nets scored - 99:89
 Girls against Brooklyn Nets scored - 109:99
 Girls against Dallas Mavericks scored - 87:93
 Girls against Dallas Mavericks scored - 104:97
 Girls against Washington Wizards scored - 117:112
 Girls against Washington Wizards scored - 107:122
 */
var myTeam = "Girls"
var resultOfGames = [
    "Brooklyn Nets" : [
        "99;89",
        "109:99"
    ],
    "Dallas Mavericks" : [
        "87:93",
        "104:97"
    ],
    "Washington Wizards" : [
        "117:112",
        "107:122"
    ]
]

for (nameOfTeam, results) in resultOfGames {
    for result in results {
        print("\(myTeam) against \(nameOfTeam) scored - \(result)")
    }
}

//MARK: Exercise 2
/*
 Exercise 2
 Declare an Array of Int. In the wallet you have only 1x by 5 - 500 EUR.
 Create a func to calculateCash sum of your cash inside your wallet.
 Run the func.
 */

let wallet : [Int] = [5, 10, 20, 50, 100, 200, 500]
func calculateCash (_ cashInWallet: [Int]) -> Int {
    return cashInWallet.reduce(0, +)
}

print("Total cash is \(calculateCash(wallet))")

//MARK: Exercise 3
/*
 Exercise 3
 Create a func isEvenNumber to calculate if a number is odd or even. If the number is even func should return true.
 Run the func.
 */

func isEvenNumber(_ number: Int) -> Bool{
    return number % 2 == 0
}

//MARK: Exercise 4
/*
 Exercise 4
 Create a func createArray to calculate some number from start: to end: than return Int array.
 Declare array and put createArray(from: 1, to: 100)
 print(array)
 */

func createArray(from start: Int, till end: Int) -> [Int] {
    return Array(start...end)
}
var arr = createArray(from: 1, till: 100)
print(arr)
//MARK: Exercise 5
/*
 Exercise 5
 Create for loop.
 Use array result from Exercise 4.
 Use isEvenNumber from Exercise 3.
 Calculate and remove isEvenNumber using if array.firstIndex of number, inside the if array.remove at index.
 It should be 1/2 of createArray and started from [1,3,5.....
 */

for numb in arr {
    if isEvenNumber(numb) {
        if let indexNumb = arr.firstIndex(of: numb) {
            arr.remove(at: indexNumb)
        }
    }
}
print(arr)
arr.removeAll(where: isEvenNumber)
