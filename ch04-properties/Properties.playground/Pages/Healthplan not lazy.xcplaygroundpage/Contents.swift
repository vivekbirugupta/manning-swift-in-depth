//: [Table of contents](Table%20of%20contents) - [Previous page](@previous) - [Next page](@next)

//: # Healthplan not lazy

import Foundation

//: ## Introducing the HealthPlan struct

struct HealthPlan {
    
    let intensity: Int
    
    var description: String
    
    var contents: String {
        // Smart algorithm calculation simulated here
        print("I'm taking my sweet time to calculate.")
        sleep(2)
        
        switch intensity {
        case ..<25: return "You can have a cheat meal, as long as you run 2 miles today!"
        case ..<50: return "Eat lots of proteins, perform 20 pushups and run 4 miles, you can do it!"
        case 100...: return "Eat raw eggs only. Do some crossfit and be sure to tell everyone!"
        default: return "Try to have a varied meal and 30 mins of exercise."
        }
    }
}

var plan = HealthPlan(intensity: 18, description: "A special workout for today!")

//: Running contents five times takes ten seconds.
print(Date())
for _ in 0..<5 {
    plan.contents
}
print(Date())

//: [Table of contents](Table%20of%20contents) - [Previous page](@previous) - [Next page](@next)

