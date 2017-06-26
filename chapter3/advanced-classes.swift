/*
  inheritance
*/

class Animal {
    var category: String
    var name: String
    init(category: String, name: String) {
        self.category = category
        self.name = name
    }
    final func getFullName() -> String {
        return "\(name) , \(category)"
    } 
}

struct Island {
    let name: String
}

//not necessary an init method because the father use it
/*Its called `subclass` or a `derived class`*/
/*Where Animal class AKA `superclass` or a `baseclass`*/
class Turtle: Animal{
    var islands: [Island] = []
    func recordRoadmap ( _ island: Island){
        islands.append(island)
    }
}

let objAnimal = Animal(
    category: "insect",
    name: "bug"
)

let objTurtle = Turtle(
    category: "reptil",
    name: "turty"
)

let islandA = Island(
    name: "bahamas"
)

objTurtle.recordRoadmap(islandA)
print("objAnimal: \(String(describing: objAnimal))")
print("objTurtle: \(String(describing: objTurtle))")

/*and more inheritance*/
class Skin: Turtle {
    var color: String = "green"
}

class SkinedTurtle: Skin {
    /*override an inherited property*/
    override var color : String {
        get {
            return super.color + " and blue"
        }
        set {
            super.color = "green and brown"
        }
    }
}

/*polymorphism*/
func getFullName(_ animalSelf: Animal) -> String{
    return "polymorphism: The name is: \(animalSelf.name) from the category \(animalSelf.category)"
}
let newAnimal = Animal(
    category: "feline",
    name: "Tiger"
)
let coloredTurtle = SkinedTurtle(
    category: "reptil",
    name: "colorfull" 
)
print(getFullName(newAnimal))
print(getFullName(coloredTurtle))

/*Runtime hierarchy checks*/
/*as  : Cast to a specific type that is known at compile time to succeed, such as casting to a supertype*/
/*as? : An optional downcast(to a subtype). If the downcast fails, the result will be nil*/
/*as! : A forced downcast. If the downcast fails, the program will crash. Use it when the cast will never fail*/

var ninjaTurtle = Turtle(
    category: "warrior",
    name: "raphael"
)

/*If I want to assing from SkinedTurtle instance to a Turtle instance*/
ninjaTurtle = coloredTurtle

/*By check inheritance*/
/*I can't do those operations:*/
/* show be an error: */
// print("ninjaTurtle.color: \(( String(describing: ninjaTurtle.color) ))")
// error: value of type 'Turtle' has no member 'color'
 
/* show be an error: */
// print("coloredTurtle as Turtle: \(String(describing: ( (coloredTurtle as Turtle).color ) ))")
// value of type 'Turtle' has no member 'color'

/*But if I using casting, maybe get the values to need:*/
/*show me an optional value*/
print("(ninjaTurtle as? Skin)?.color: \(String(describing: ( (ninjaTurtle as? Skin)?.color ) ))")
// Optional("green and blue") 

/*a force unwrapping value*/
print("(ninjaTurtle as! Skin).color: \(String(describing: ( (ninjaTurtle as! Skin).color ) ))")
// "green and blue"

//With conditionals and typecasting is usefull too:
if let ninjaTurtleCasted = ninjaTurtle as? Skin {
    print("this ninjaTurtle is a Skin derived with color: \(ninjaTurtleCasted.color)")
}

/*Swift has a `strong type system`, and the interpretation of a specific type can have
  an effect on `static dispatch`, or the decision of which specific operation is selected
  at compiled time. By ex.:
*/
func goTurtleTo(for turtle: Turtle) -> String {
    return "goTurtleTo: To the sea"
}

func goTurtleTo(for turtle: Skin) -> String {
    return "goTurtleTo: To the closet"
}

print( goTurtleTo(for: coloredTurtle as Turtle) ) //To the sea
print( goTurtleTo(for: coloredTurtle) ) //To the closet

/*Inheritance, methods and overrides*/
class americanTurtle: Turtle {
    var sudamericanIslands: [Island] = []

    /*It's neccesary the reserved word `override` such a prefix to override the inherited method*/
    override func recordRoadmap(_ island: Island){
        /*The `super` keyword is the reference of the super class, 
          so that sentence invoke the `recordRoadmap` method from Turtle class*/
        super.recordRoadmap(island)
        /*Its generally best practice to call to `super` version of a method first when overriding,
          that way, the superclass won't experience any side effects introduced by its subclass,
          and the subclass won't need to know the superclass's implementation details*/

        if island.name == "galapagos" {
            sudamericanIslands.append(island)
        }
    }

    var isMarine: Bool {
        return sudamericanIslands.count < 2
    }
}

/*Learning the `final` keyword*/
/*If I want to create a class will never get a subclass, or I don't want inheritance from this class defined */
final class MyFinalClass: Animal {}

//An get an error if I want to apply inheritance:
//class tryingToInherit: MyFinalClass {} //error: inheritance from a final class 'MyFinalClass' 

/*Even we can use that keyword with methods:*/
//Try to overriding:
/*
class DummyClass: Animal {
    override func getFullName() -> String {} //error: instance method overrides a 'final' instance method
}
*/

/*Inheritance and class initialization*/
/*When declare an init method into a subclass, maybe gets an error:*/
/*
class cat: Animal {
    init (activities: [String]) {

    }
} //error: super.init isn't called on all paths before returning from initializer
*/
//So

class Cat: Animal {
    var activities: [String]
    init (category: String, name: String, activities: [String]) {
        super.init(category: category, name: name) //We need to declare that
    }
}