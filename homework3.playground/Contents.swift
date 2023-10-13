import UIKit

//MARK:  Exercise 1
/*
 Exercise 1
 The user opens a deposit in the bank for 5 years in the amount of 500_000 Eur. The interest rate per annum \(rate). Calculate the amount of income \(profit) at the end of the \(period).
 for _ in 1...period{
 }
 print("Amount of income after \(period) years will be \(profit) Eur. My total deposit will be \(deposit) Eur !")
 */
var deposit: Double = 500_000
let rate: Double = 0.02
let period: Int = 5
var profit: Double = 0

for _ in 1...period {
    let interest = deposit * rate
    profit += interest
    deposit += interest
}
let formatedProfit = String(format: "%.2f" , profit)
let formatedDeposit = String(format: "%.2f", deposit)
print("Amount of income after \(period) years will be \(formatedProfit) Eur. My total deposit will be \(formatedDeposit) Eur !")

//MARK:  Exercise 2
/*
 Exercise 2
 Create an integer array with any set of numbers and  print("My even numbers are: \(evenNumber)")
 Use a % inside the for loop.
 */
let arr: [Int] = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
var evenNumbersArr: [Int] = []

for i in arr {
    if i % 2 == 0 {
        evenNumbersArr.append(i)
    }
}
print("My even numbers are: \(evenNumbersArr)")

//MARK:  Exercise 3
/*
 Exercise 3
 Inside the for loop create randomNumber for the random Int calculation. Calculate and print("Number 5 will be after \(counter) shuffles"). Don't forget to make a break inside the if statement.
 */
let maxIterations: Int = 1_000_000
var numberFound: Bool = false

for i in 1...maxIterations {
    let randomNumber = Int.random(in: 1...100_000)
    
    if randomNumber == 5 {
        print("Number 5 will be after \(i) shuffles")
        numberFound = true
    }
}
if numberFound == false {
    print("5 was not generated as random number")
}

//MARK:  Exercise 4
/*
 Exercise 4
 A bug is climbing to a 10-meter electric post. During the day, bug can climb two meters, during the night she slides down to 1 meter. Determine with the help of the cycle how many days bug will climb on the top of the post. Think about which loop to use in which situation. print("bug will spend \(numberOfDays)) to reach top of the post")
 */

var metersClimbed: Int = 0
var numberOfDays: Int = 0

while metersClimbed < 10 {
    metersClimbed += 2
    numberOfDays += 1
    
    if metersClimbed < 10 {
        metersClimbed -= 1
    }
}

print("bug will spend \(numberOfDays)) to reach top of the post")
