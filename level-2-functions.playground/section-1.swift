import UIKit



/***
Functions and Tuples
***/

// Defining a function

func printHello() {
    println("Hello")
}

// Calling the function

printHello()


// Parameters

func printArea(height: Int, width: Int){
    let area = height * width
    println("The area is \(area)")
}

// Calling the function with parameters

printArea(10, 12)




// Named parameters and a return type

func calcArea1(with height: Int, and width: Int) -> Int{
    return height * width
}
calcArea1(with: 10, and: 12)

func calcArea2(#height: Int, #width: Int) -> Int{
    return height * width
}
calcArea2(height: 10, width: 12)


// Default parameters

func calcArea3(height: Int = 10, width: Int = 12) -> Int{
    return height * width
}

calcArea3()


// Making use of the returned value

println("The area is \(calcArea3(height: 10, width: 12))") // Notice that the parameter names are included in the function call




var aTuple = ("Bill", 42, UIColor.blueColor(), CGPointMake(20, 30))

// Naming the tuple components in a function return

func willReturnTuple() -> (String, Int, UIColor, CGPoint) {
    return aTuple
}

// Accessing the tuple component by calling the function

willReturnTuple().1

// Naming the function parameter and the return values

func willReturnNamedTuple(whichTuple thisTuple: (String, Int, UIColor, CGPoint)) -> (name: String, age: Int, color: UIColor, location: CGPoint) {
    return thisTuple
}

// Accessing the tuple component by calling the function

willReturnNamedTuple(whichTuple: aTuple).age





/***
Simple algorithms
Using "if let" and optionals
***/


// See if two numbers are divisible

func testDivisibility(a: Int, by b: Int) -> Int?{
    if a % b == 0 {
        return nil
    } else {
        return a % b
    }
}

if let remainder = testDivisibility(3, by: 2) {
    println("The remainder is \(remainder)")
} else {
    println("Divisible")
}




// Retreive a person's age by searching for their name

func search(#who: String) -> Int? {
    let people = ["Bill": 26,"Bob": 42,"Ben": 37]
    for (name, age) in people {
        if name == who {
            return age
        }
    }
    return nil
}

if let age = search(who: "Doc") {
    println("This person's age is \(age)")
} else {
    println("This person wasn't found")
}

