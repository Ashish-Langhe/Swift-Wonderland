import UIKit


var greeting = "Hello, playground"

//------------------------------------------------
//-------------Use of Underscore------------------
//------------------------------------------------

var num = 10_0______0______00
var knum = 10_000_00

var k = 0.1__0__________9
var l = 2.0
let sum = k + l


let a = 5_____2
let b = 3

let result = a + b

//------------------------------------------------
//-------------Property Observers-----------------
//------------------------------------------------
//Create a Player struct with score  integer property that has  a property observer so that whenever the score changed it prints "The Score  is now " followed by the  new score value. In Swift


struct Player {
    var score: Int {
        didSet {
            print("The Score is now \(score)")
        }
    }
    
    init(score: Int) {
        self.score = score
    }
}

// Example usage:
var player = Player(score: 60)
player.score = 74
print(player.score)

//------------------------------------------------
//-------------Consume Operator-------------------
//------------------------------------------------

//consume operator to end the lifetime of a variable binding - Available from Swift 5.9
func createAndProcessUser() {
    let newUser = User(name: "Anonymous")
    process(user: consume newUser)
}

func process(user: User) {
    print("Processing \(name)…")
}

createAndProcessUser()


//------------------------------------------------
//-------Closure & HigerOrder Functions-----------
//------------------------------------------------
// Question: The following function calculates the sum of integers in a traditional way using a loop. Please rewrite the function to make it more efficient and concise without using higher-order functions. Your goal is to achieve the same result but with more elegant code. Feel free to explain your thought process as you go.

func sumOfIntegers(_ numbers: Int...) -> Int {
    let sumClosure: (Int, Int) -> Int = { result, number in
        return result + number
    }
    
    return numbers.reduce(0, sumClosure)
}

// Example usage:
let totalSum = sumOfIntegers(1_2__________3_4_5, 2_____, 3, 4, 5)
print("The sum of all numbers is: \(totalSum)")

//------------------------------------------------
//---------------Defer Block----------------------
//------------------------------------------------

func exampleFunction() {
    
    defer {
        print("Deferred task 13")
        defer {
            print("Deferred task 12")
        }
        defer {
            print("Deferred task 11")
        }
    }
    
    defer {
        
        print("Deferred task 1")
    }
    
    // Some code
    
    defer {
        print("Deferred task 2")
    }
    
    // More code
    
   
    
    // Rest of the code
}

exampleFunction()
//------------------------------------------------
