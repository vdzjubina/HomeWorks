import UIKit

//MARK: Exercise 1
/*
 Ex1:
 1.1 Declare two variables of type Float and assign each a number with a fractional part - for example, 3.14 or 42.0
 1.2 Declare another variable of type Double and assign it the sum of two variables of type Float
 1.3 Print the result with print ()
 */
let a: Float = 3.14
let b: Float = 42.0
let sum: Double = Double(a + b)
let formated = String(format: "%.2f", sum)
print(sum)

//MARK: Exercise 2
/*
 Ex2:
 2.1 Create a variable numberOne and assign any integer value to it
 
 2.2 Create another integer variable numberTwo and assign it any value less than numberOne
 
 2.3 Set the new integer constant result to the result of dividing numberOne by numberTwo
 
 2.4 Assign the new integer constant remainder the remainder of numberOne divided by numberTwo
 
 2.5 Output to the console the message: "When dividing <...> by <...>, the result is <...>, the remainder is <...>".
 */
let numberOne = 2
let numberTwo = 1
let devidingVal = numberOne / numberTwo
let reminderVal = numberOne % numberTwo
print("When dividing \(numberOne) by \(numberTwo), the result is \(devidingVal), the remainder is \(reminderVal)")

//MARK: Exercise 3
/*
 Ex3:
 You need to buy several new MacBook Pro, each cost 1000 EUR.
 If you are buying 5 and more, with discount it will cost you 900 each! If you are buying 10 and more with discount it will cost you 850 each! Create if-else statements to check Conditions of buying in different amount!
 print("new: \(qty) MacBook Pro with the price of: \(price) EUR, will cost you: \(totalSum) Eur")
 */
let totalSum: Int
let qty: Int = 5
var price: Int = 1000

if qty >= 5 {
    price = 900
} else if qty >= 10 {
    price = 850
}

totalSum = qty * price
print("new: \(qty) MacBook Pro with the price of: \(price) EUR, will cost you: \(totalSum) Eur")

//MARK: Exercise 4
/*
 Ex4:
 Create String userInputAge and put value "33a" and convert to Int to make Fatal error: Unexpectedly found nil while unwrapping an Optional value!
 Fix this Fatal error inside the if-else statements to print whenever this age can be converted to Int or not!
 */
let userInputAge: String = "33a"
let convertToInt = Int(userInputAge)
if convertToInt == nil {
    print("User input can't be converted to Int")
} else {
    print("User input can be converted to Int")
}

//MARK: Exercise 5
/*
 Ex5:
 Calculate the number of years, months, days have passed from you birthday to current date.
 print("Total years: \(totalYearsFromBirth) , total months: \(totalMonthFromBirth), total days: \(totalDaysFromBirth) have passed")
 */
let dateFormatter = DateFormatter()
dateFormatter.dateFormat = "dd/MM/yyyy"
let myBirthDay = dateFormatter.date (from: "14/03/1998") ?? Date()
let currentDay = Date()
let calendar = Calendar.current
let totalDaysFromBirth = calendar.dateComponents([.day], from: myBirthDay, to: currentDay).day
let totalMonthFromBirth = calendar.dateComponents([.month], from: myBirthDay, to: currentDay).month
let totalYearsFromBirth = calendar.dateComponents([.year], from: myBirthDay, to: currentDay).year
if totalDaysFromBirth != 0 || totalMonthFromBirth != 0 || totalYearsFromBirth != 0 {
  print("Total years: \(totalYearsFromBirth), total months: \(totalMonthFromBirth), total days: \(totalDaysFromBirth) have passed")
} else {
  print("ERROR")
}

//MARK: Exercise 6
/*
 Ex6:
 Use Exercise 5 monthOfBirth to calculate in which quarter of the year you were born.
 Use switch case to print("I was born in the ... quarter")
 */
let monthOfBirth = Int(calendar.dateComponents([.month], from: myBirthDay).month ?? 0)
var quarter: String?
switch monthOfBirth {
case 1...3:
    quarter = "first"
case 4...6:
    quarter = "second"
case 7...9:
    quarter = "third"
case 10...12:
    quarter = "fourth"
default:
    quarter = nil
    print("ERROR!!!")
}
print("I was born in the \(quarter) quarter")
