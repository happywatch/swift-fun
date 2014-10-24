// Original by happywatch, http://www.happy.watch/downloads/2014/9/29/swift-playground


import UIKit



/***
Declaring variables and constants
***/

var greeting = "Hello, playground"

let constantGreeting = "Hi, playground"

greeting = "Howdy"

// constantGreeting = "Howdy"
// can't change it. declaring it with "let" makes it immutable



/***
Arrays, Dictionaries, and Optionals
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
// Click the "value history" (dot) button next to the "(9 times)" output in the sidebar to see a graph that shows you the value over each iteration of the loop



