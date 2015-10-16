import UIKit

/*

Strings

*/

func favoriteCheeseStringWithCheese(cheese: String) -> String {
    
    return "My Favorite cheese is \(cheese)"
}

let fullSentence = favoriteCheeseStringWithCheese("cheddar")
// Make fullSentence say "My favorite cheese is cheddar."

/*

Arrays & Dictionaries

*/

let numberArray = [1, 2, 3, 4]
// Add 5 to this array
var newArray = numberArray + [5]

let numberDictionary = [1 : "one", 2 : "two", 3 : "three", 4 : "four"]
// Add 5 : "five" to this dictionary
var newNumberDictionary = numberDictionary
newNumberDictionary.updateValue("five", forKey: 5)
newNumberDictionary
/*

Loops

*/

// Use a closed range loop to print 1 - 10, inclusively

for num in 1...10 {
    print("\(num)")
}

// Use a half-closed range loop to print 1 - 10, inclusively
for num in 1..<11 {
    print("\(num)")
}

let worf = [
    "name": "Worf",
    "rank": "lieutenant",
    "information": "son of Mogh, slayer of Gowron",
    "favorite drink": "prune juice",
    "quote" : "Today is a good day to die."]

let picard = [
    "name": "Jean-Luc Picard",
    "rank": "captain",
    "information": "Captain of the USS Enterprise",
    "favorite drink": "tea, Earl Grey, hot"]

let characters = [worf, picard]

func favoriteDrinksArrayForCharacters(characters:[[String : String]]) -> [String] {
    // return an array of favorite drinks, like ["prune juice", "tea, Earl Grey, hot"]
    var favoriteDrinksArray = [""]
    for character in characters {
        if let favoriteDrink = character["favorite drink"]{
            favoriteDrinksArray.append(favoriteDrink)
        }
    }
    return favoriteDrinksArray
}

let favoriteDrinks = favoriteDrinksArrayForCharacters(characters)

favoriteDrinks

/*

Optionals

*/

func emailFromUserDict(userDict : [String : String]) -> String {
    // Return the user's email address from userDict, or return "" if they don't have one
    
    if let email = userDict["email"] {
        return email
    } else {
        return ""
    }
}


let mostafaElSayedUser = ["name" : "Mostafa A. El-Sayed", "occupation" : "Chemical Physicist", "email" : "mael-sayed@gatech.edu", "awards" : "Langmuir Award in Chemical Physics, Arabian Nobel Prize, Ahmed Zewail prize, The Class of 1943 Distinguished Professor, 2007 US National Medal of Science", "birthday" : "8 May 1933"]

let marjorieBrowneUser = ["name" : "Marjorie Lee Browne", "occupation" : "Mathematician", "birthday" : "September 9, 1914"]


// If your emailFromUserDict function is implemented correctly, both of these should output "true":

emailFromUserDict(mostafaElSayedUser) == "mael-sayed@gatech.edu"
emailFromUserDict(marjorieBrowneUser) == ""

/*

Functions

*/

// Make a function that inputs an array of strings and outputs the strings separated by a semicolon

let strings = ["milk", "eggs", "bread", "challah"]

// WORK HERE - make your function and pass `strings` in
func concatenateStrings( strings: [String]) -> String {
    return ";".join(strings)
}

let expectedOutput = "milk;eggs;bread;challah"

let resultConcatenate = concatenateStrings(strings)
resultConcatenate == expectedOutput
/*

Closures

*/

let cerealArray = ["Golden Grahams", "Cheerios", "Trix", "Cap'n Crunch OOPS! All Berries", "Cookie Crisp"]

// Use a closure to sort this array alphabetically
let sortedLongWay = sorted(cerealArray, {(cerealA, cerealB) in
    cerealA < cerealB
})

let sortedShortWayCereals = sorted(cerealArray, <)
