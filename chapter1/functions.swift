print("========== OUTPUT ========= ")
// basic syntax
func hello(){
    print("Hi all!")
}
hello()

/*
print("type of fn hello: \(type(of: hello))")
print("self of fn hello: \(String(describing: hello.self))")
*/

//inmutable values
/*
func AplusB(a: Int, b: Int) {
    //a = 100 dont works assignment
    let result = a + b
    print("a +  b: \(result)")
}
AplusB(a: 10, b: 5)

func hiFriend(name value: String) {
    print("Hi!: \(value)")
}
hiFriend(name: "cool!")
*/

//mutable values
/*
func hiUser(_ userName: inout String) {
    userName = userName + ", nice to meet you"
    print("hi: \(userName)")
}
var valueToPass = "jhon"
hiUser(&valueToPass)
print(valueToPass)
*/

//returning values

/*
func friendlyCalc(a: Int, b: Int) -> String {
    let result = a + b
    return "a + b: \(result)"
} 
print(friendlyCalc(a: 20, b: 100))

func getIGV(price: Double) -> Double {
    return price * 0.18
} 
var examplePrice = 100.0
print("The IGV of \(examplePrice) is: \(getIGV(price:examplePrice))")
*/