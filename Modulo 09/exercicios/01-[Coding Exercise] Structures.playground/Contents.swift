import UIKit

//Define a struct
struct User {
    var name: String
    var email: String?
    var followers: Int
    var isActive: Bool
    
    func logStatus() {
        if (isActive) {
            print("\(name) is working hard")
        } else {
            print("\(name) has left earth")
        }
    }
}

// Initialise the struct
var branson = User(name: "Richard", email: nil, followers: 0, isActive: false)
branson.logStatus()

// Diagnostic code
print("\nDiagnostic code (i.e., Challenge Hint):")

var musk = User(name: "Elon", email: "elon@tesla.com", followers: 2001, isActive: true)
musk.logStatus()

print("Contacting \(musk.name) on \(musk.email!) ...")
print("\(musk.name) has \(musk.followers) followers")

// sometime later
musk.isActive = false
musk.logStatus()
