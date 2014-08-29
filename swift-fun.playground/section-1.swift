import UIKit



/***
Declaring variables and constants
***/

var str = "Hello, playground"

let strExplicit = "Hi, playground"

str = "Howdy"

// strExplicit = "Howdy"
// can't change it. declaring it with let makes it immutable



/***
Arrays and Dictionaries
***/

var array = ["one", "two"]

array.append("three")

array[2]



var dictionary = ["Anna": 46, "Jill": 33]

dictionary["Robert"] = 37

let jillsAge = dictionary["Jill"]

var three: Int? = nil
three = 3
three!

let jillsAgeTimesTwo = dictionary["Jill"]! * 2

if let bobsAge = dictionary["Bob"] {
    print(bobsAge)
} else {
    print("Bob's not in the dictionary")
}



/***
Loops
***/

var result = Int()
for (key, value) in dictionary {
    result += value
}
result

for x in 1..<10 {
    x * x
}
// Click the "value history" (dot) button next to the number to times in the sidebar to see a graph



/***
Tuples and functions
***/

var aTuple = ("Bill", 42, UIColor.blueColor()!, CGPointMake(20, 30))

func willReturnTuple() -> (String, Int, UIColor, CGPoint) {
    return aTuple
}

willReturnTuple().1




/***
Views
(Click the EYE in the sidebar to see the results)
***/


let aColor = UIColor.cyanColor()

let aFont = UIFont.systemFontOfSize(42)

let attrStr = NSAttributedString (string: str, attributes: [NSForegroundColorAttributeName: aColor, NSFontAttributeName: aFont])

let aFrame = CGRect(x:0,y:0,width:200,height:100)

let aView = UIView(frame: aFrame)
aView.backgroundColor = UIColor.redColor()

let aLabel = UILabel(frame: aView.frame)
aLabel.attributedText = attrStr

aView.addSubview(aLabel)




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
Function as a parameter
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
    return ( a * a ) + ( b * b ) / 2
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






