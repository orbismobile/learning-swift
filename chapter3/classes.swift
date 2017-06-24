import Glibc
/*
  Classes
  The main difference with structs:

  Structs: Value type
  Classes: Reference type
*/

/*Example of class*/
class Person {
    var firstName: String
    var lastName: String

    /*It's required for every class*/
    init(firstName: String, lastName: String) {
        self.firstName = firstName
        self.lastName = lastName
    }

    var fullName: String {
        return "\(firstName) \(lastName)"
    }
}

let foo = Person(firstName: "Foo", lastName: "Bar")
print("PersonClass->fullName: \(foo.fullName)")

/* Reference types
  In swift, a structure is an inmutable value.
  A class, on the other hand, is a mutable reference,
  a mean, the classes are reference types, 
  a variable of a class type does not store an actual instance.
  But a reference to a location in memory that stores the instance.
  If you were to create a simple `Person` instance  with a name, by. Ex:
  */
class PersonClass {
    var name: String
    init(name: String){
        self.name = name
    }
}
var objPerson = PersonClass(name: "Foo")
var referenceA = objPerson.name
print("referenceA: \(referenceA)")

//Taking the same space of memory of referenceA
var referenceB = referenceA
print("referenceB: \(referenceB)")

/*To difference of structs*/
struct PersonStruct {
    let name: String
}
var valuePerson = PersonStruct(name: "FooValue")
var valueA = valuePerson.name
print("valueA: \(valueA)")

//Taking the same space of memory of referenceA
var valueB = valueA
print("valueB: \(valueB)")

/*
  The heap vs. the stack

  When you create a `reference type` such as class, the system stores the actual
  instance in a region of memory know as the `heap`.

  Instances of a value type such as a struct resides in a region of memory called
  `stack`

  Unless the value is part of a class instance, in which case the value is stored
  on the `heap` with the rest of the `class` instance
*/

let objFoo = PersonClass(name: "Bar")
var homeOwner = objFoo

objFoo.name = "fake101"
print("PersonClass->firstName \(objFoo.name)")
print("homeOwner->firstName \(homeOwner.name)")
/*The example above, makes a problem to setting a value by reference type*/

/*Object identity!*/
/*With the operator === lets you check if the identity*/
/*compares the memory address of two references. It tells you whether the value
of the references are the same; that is, they point to the same block of data on
the `heap`
 */
let fakeFoo = PersonClass(name: "Barfake")
print("objFoo === homeOwner \(objFoo === homeOwner)")
print("objFoo === fakeFoo \(objFoo === fakeFoo)")
print("fakeFoo === homeOwner \(fakeFoo === homeOwner)")

//Assignment of existing variables changes the instances the variables reference.
homeOwner = fakeFoo
print("objFoo === homeOwner \(objFoo === homeOwner)")

homeOwner = objFoo
print("objFoo === homeOwner \(objFoo === homeOwner)")

//Create a couple of fakes Foo's
var foos = (0...100).map { _ in
    PersonClass(name: "Foo")
}

//Equality is not effective when foos cannot be identified by his name alone
var itContains = foos.contains {
    $0.name == objFoo.name
}
print("itContains: \(itContains)")
//Using the identify operator, verifying the refences themselves are equal.
itContains = foos.contains {
    $0 === objFoo
}
print("itContains with identity operator: \(itContains)")

//Insert an objFoo into the collection of foos
foos.insert(objFoo, at: Int(random() % 10))
itContains = foos.contains {
    $0 === objFoo
}
print("itContains with identity operator: \(itContains)")

if let whereIsObjFoo = foos.index(where: { $0 === objFoo}) {
    foos[whereIsObjFoo].name = "coool"
}
print("founded and updated: \(objFoo.name)")

//Methods and mutability
struct Experience {
    let companyName: String
    let position: Double
    let yearsOfWork: Double
}

class Postulant {
    var firstName: String
    var lastName: String
    var experiences: [Experience] = []

    init(firstName: String, lastName: String){
        self.firstName = firstName
        self.lastName = lastName
    }

    func recordExperience(_ experience: Experience){
        experiences.append(experience)
    }

}

let postulantA = Postulant(
    firstName: "DemoA"
    lastName: "barA"
)
let experienceA = Experience(
    companyName : "ALPHA SAC"
    position    : "Boss"
    yearsOfWork : 30
)
let experienceB = Experience(
    companyName : "BETA SAC"
    position    : "officer"
    yearsOfWork : 10
)
postulantA.recordExperience(experienceA)
postulantA.recordExperience(experienceB)

/* 
    If the class Postulant was an structure, maybe makes a build failure
    Because `structures` are usually INMUTABLE. Remember, when you change
    the value of a struct, instead of modifying the value, you're making
    a new value
*/
/*Mutability and Constants*/


