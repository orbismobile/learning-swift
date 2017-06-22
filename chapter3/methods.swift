import Glibc
/*
 Methods

 Should I implement this value getter as a method or 
 as a computed property?

 1. Need a setter?
 1.0 NO: Extensive computation or DB access?
 1.0.0 NO: Computed property
 1.0.1 YES: ```Method```
 1.1 YES: Computed Property
*/
let months = [
    "January",
    "February",
    "July",
    "August",
    "December"
]
/*Turning a function into a method*/
/*From that code*/
/*
struct simpleDate {
    var month: String
}

func freeMonths(from date: simpleDate) -> Int {
    return months.index(of: "August")! - months.index(of: date.month)!
}

Too easy...
*/

struct SimpleDate {
    var month: String
    func freeMonths(from date: SimpleDate) -> Int {
        return months.index(of: "December")! - months.index(of: date.month)!
    }
}

let date = SimpleDate(month: "February")
let monthsLeft = date.freeMonths(from: date)
print("MonthsLeft: \(monthsLeft)")

/*Intro to `self`*/
/*Structs has an own context, so:*/
struct SimpleDateOwnContext {
    var month: String
    func freeMonths()-> Int{
        return months.index(of: "December")! - months.index(of: self.month)!
    }
}

let testDateOwnCtx = SimpleDateOwnContext(month: "February")
let monthsLeftOwnCtx = testDateOwnCtx.freeMonths()
print("MonthsLeft own ctx: \(monthsLeftOwnCtx)")

/*Initializers*/
/*Are the especial methods you can call to create a new instance.
The omit the `func` keyword and even a name; instead they use: `init`*/

struct SimpleDateWithInit {
    var month: String
    init(){
        month = "February"
    }
    func freeMonths()-> Int{
        //other way is use month in reference to self.month
        return months.index(of: "December")! - months.index(of: month)!
    }
}

let testDateWithInit = SimpleDateWithInit()
let monthWithInit = date.month //February
print("monthWithInit: \(monthWithInit)")
let monthsLeftWithInit = testDateWithInit.freeMonths()
print("monthsLeftWithInit: \(monthsLeftWithInit)")

/*Intro to mutating methods*/
/*
  Methods in structures cannot change the values of the instance without
  being marked as `mutating`.

  mutating func advance(){
    ... code here...
  }

  The `mutating` keyword marks a method that changes a structure's value.
*/

/*Type methods*/
/*Like type properties, you can use `type methods` to access data across all
  instances. You call type methods on the type itself, instead of on an instance.
  To define a type method, you prefix it with the `static` modifier.
*/
struct Math {
    static func factorial(of number: Int) -> Int {
        return (1...number).reduce(1, *)
    }
}
let factorial = Math.factorial(of: 6);
print("factorial: \(factorial)")

/*Adding to an existing structure with extensions*/
extension Math {
    static func primeFactors(of value: Int) -> [Int] {
        var remainingValue = value
        var testFactor = 2
        var primeValues: [Int] = []
        while testFactor * testFactor <= remainingValue {
            if remainingValue % testFactor == 0 {
                primeValues.append(testFactor)
                remainingValue /= testFactor
            } else {
                testFactor += 1
            }
        }
        if remainingValue > 1 {
            primeValues.append(remainingValue)
        }
        return primeValues
    }
}
let primes = Math.primeFactors(of: 8)
print("primes: \(primes)")

/*
  IMPORTANT: It is not possible to add stored properties to
  an existing structure because that would change the size
  and memory layout of the structure and break existing code
*/
