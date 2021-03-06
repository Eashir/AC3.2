import UIKit

//1a) Write a function so that it will print out total cost after tip.

let itemCost = 45
let tipPercentage = 0.15

//Write your code below

func totalWithTip(Cost x: Int, Tip y: Double) -> Double {
    let tip = Double(x) * y
    return Double(x) + tip
}

let myFinalCost = totalWithTip(Cost: itemCost, Tip: tipPercentage) //Fill in the arguments
print(myFinalCost)

////1b)Write a function  that it will print out total cost after tip and tax
let taxPercentage = 0.09
//
////Write your code below
func totalWithTipAndTax(Tip x: Double, Tax y: Double, Cost z: Int) -> Double {
    let tip = Double(z) * x
    let tax = Double(z) * y
    let total = tip + tax + Double(z)
    return total
}
let myFinalCostWithTipAndTax = totalWithTipAndTax(Tip: tipPercentage, Tax: taxPercentage, Cost: itemCost)
print(myFinalCostWithTipAndTax)
 //Fill in the arguments


////2a)Write a function takes an Int as input, and returns true if it is even, and false if it is odd
//
////Write your code below
func isEven(Number num: Int) -> Bool {
    guard num % 2 == 0 else {
        return false
    }
    return true
}

isEven(Number: 3)
////2b) Using function above, write code that prints out whether dieRoll is even or odd

let dieRoll = Int(arc4random_uniform(6) + 1)
print(isEven(Number: dieRoll))
////3)
///*
// Write a function that prints the numbers from 1 to x. EXCEPT:
// * If the number if a multiple of 3, print "Fizz" instead of the number
// * If the number is a multiple of 5, print "Buzz" instead of the number
// * If the number is a multiple of 3 AND 5, print "FizzBuzz" instead of the number
// 
// Your function should take in one parameter: x (the number to count up to)

func fizzBuzz(Range x: Int) {
    for i in 1...x {
        if i % 15 == 0 {
            print("FizzBuzz")
        }
        else if i % 3 == 0 {
            print("Fizz")
        }
        else if i % 5 == 0 {
            print("Buzz")
        }
        
        else {
            print(i)
        }
    }
}
fizzBuzz(Range: 30)


////4a) Write a function that takes [Int] as input.  It should return the largest Int in the array.
//
////Write your code below
func largestInt(Array: [Int]) -> Int {
    var largest = Array[0]
    for aNum in Array {
        if aNum > largest {
            largest = aNum
        }
    }
    return largest
}
//
//
//4b)
let myArray = [3,5,1,3,532,1,4,91,20,30,92,143]

let largestIntInArray = largestInt(myArray)
////Using your function in part a, use String interpolation to print a sentence that states what the largest Int in myArray is
print("The largest Int in myArray is \(largestIntInArray).")
//
////4c)
////Using your solution to 2a), print a sentence that states whether the largest Int in myArray is even or odd

let checkInt = isEven(Number:largestIntInArray)
var oddEven = ""
if  checkInt {
     oddEven = "even"
}
else {
    oddEven = "odd"
}
print("The largest Int in myArray is \(oddEven).")

////5a) Write a function that takes a String as input and returns the number of characters in the string
//
////Write your code below
func numberOfCharacters(Sentence x: String) -> Int {
    return x.characters.count
}


////5b) Using your function above, print how many characters are in myString
//
let myString = "Swift is a new programming language for iOS, OS X, watchOS, and tvOS apps that builds on the best of C and Objective-C, without the constraints of C compatibility."
print(numberOfCharacters(Sentence: myString))
//
//
////5c) Write a function that counts how many characters in a String match a specific character.  (e.g: count how many "a"s are in a String, or count how many ","s are in a String.

func amountMatching(Sentence x: String, Target y: String) -> Int {
    var count = 0
    for eachCharacter in x.characters {
        if eachCharacter == Character(y) {
           count += 1
        }
    }
    return count
}
////Sample input:
let FiveCString = "This is a test string for your code"
let targetCharacter = "i"

print(amountMatching(Sentence: FiveCString, Target: targetCharacter))
////Sample output:
////3
//
//
//
////5d) Write a function that counts how many characters in a String match one of several possible characters.  (e.g: count how many vowels are in a String, or count how many "a"s "b"s and "c"s are in a Sting)
//
////Sample input:
let FiveDString = "This one is a little more complicated"
let targetCharacters = ["a", "e", "i", "o", "u"]

////Sample output:
////13
//
//
////Write your code below

func matchingCharacters(Sentence x: String, Array y: [String]) -> Int {
    var count = 0
    
    for eachCharacter in x.characters {
        for eachElement in y {
            guard eachElement != " " else {
                continue
            }
            if  Character(eachElement) == eachCharacter{
                count += 1
            }
        }
    }
    return count
}

print(matchingCharacters(Sentence: FiveDString, Array: targetCharacters))
////6) Write a function that returns the number of unique Ints in an array of Ints
//Sample input:
let inputArray = [3,1,4,1,3,2,6,1,9]
func numOfUnique(Numbers Array: [Int]) -> Int? {
    outer:   for i in 0..<Array.count {
                for j in 0..<Array.count {
                    if i != j {
                        if Array[i] == Array[j] {
                            continue outer
                        }
                    }
                 }
        
                return Array[i]
             }
    return nil

}

if let x = numOfUnique(Numbers: inputArray) {
    print(x)
}
else {
    print("blah")
}

print(numOfUnique(Numbers: inputArray)!)

////Sample output:
////4
//
////Explanation:
////2, 4, 6, 9 are unique in the array.  Every other number is not unique.
//
//
////7) Write a function that converts a binary number into decimal.  The binary number will be given as an array of Ints.
//

//func convert(Binaries x: [Int]) -> Int {
//    for eachBinary in x {
//        
//    }
//}


////Sample input:
////let binaryArray = [1,0,1,1,1,0,1]
//
////Sample output:
////93
//
////8) Copy the movie dictionary from homework two and add another [String] to each movie.
////   Name it "locations" and add some dummy data. Use the re-factored nested function
////   from the full lesson (we didn't go over it) to print both the cast list and the
////   locations.
//
////Write your code below
//
//
////9) Given one movie write a function that takes the movie (remember to use its type)
////   as its only argument and return a tuple that contains name, year and genre.
//
////Write your code below
//
//
////10) Define a function that takes the movie array that will call the function you just created
////    in answer to the previous question. The new function should return an array of the
////    tuples: (name, year, genre).
//
////Write your code below
//
//
////11) Write a function that takes the movie as its only argument that lists all cast members across movies.
////    The tricky part: no duplicates. I think you'll need to edit the data to create some doubled actors in order
////    to test this. Return should be [String]?.
//
////Write your code below