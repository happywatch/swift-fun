import UIKit



/***
Optional parameters
***/

func countParams(anys: Any...) -> Int {
    return anys.count
}

countParams("hi")
countParams("hi", "howdy")
countParams("hi", "howdy", "hello")




func optionalParams(one: String = "", two: String = "") -> String {
    return one + two == "" ? "nope" : one + two
}

optionalParams()
optionalParams(two: "sir")
optionalParams(one: "yes ", two: "sir")




/***
Generics and inout
***/


func swapValues<T>(inout one: T, inout two: T ){
    (one, two) = (two, one)
}

var a = 5, b = 9
swap(&a, &b)
[a, b]

var c = "Hi", d = "Howdy"
swap(&c, &d)
[c, d]




/***
Passing a function as a parameter
***/

func sum(a: Int, b: Int) -> Int{
    return a + b
}
sum(3, 4)

func square(a: Int) -> Int{
    return a * a
}
square(3)

func sumOfSquares(a: Int, b: Int) -> Int{
    return ( a * a ) + ( b * b )
}

func sumOfFunction(a: Int, b: Int, f:(Int -> Int)) -> Int {
    return f(a) + f(b)
}

var levelOne = sumOfFunction(3, 4, {(x: Int) -> Int in return x * x})
levelOne

var levelTwo = sumOfFunction(3, 4, {x in return x * x})
levelTwo

var levelThree = sumOfFunction(3, 4, {x in x * x })
levelThree

var levelFour = sumOfFunction(3, 4, {$0 * $0})
levelFour




/***
High order functions
***/

let numbers = [1,2,3]
// map - produces a new collection with new values for each of the values in another collection
let squares = numbers.map { $0 * $0 }
squares
// filter - returns only the values we want from a collection
let odds = numbers.filter { $0 % 2 == 1 }
odds
// reduce - turns a collection of values into a single value (provided a starting value)
let sum = numbers.reduce(0) { $0 + $1 }
sum


/***
Sorting
***/

sorted([3,2,1])
