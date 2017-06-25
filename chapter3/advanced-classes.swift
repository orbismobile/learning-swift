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
            return super.color + "and blue"
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

//(coloredTurtle as Animal).name //must show be an error
//(coloredTurtle as? Animal)?.name //must show be an error