import Glibc

/*
  Structs
*/
struct Location {
    let x: Int
    let y: Int
}

/*
  Where x and y are properties, properties are constants or variables
*/
let storeLocation = Location(x: 2, y: 4)

/*
  You can define a struct who defines a property with some defined struct
*/
struct DeliveryArea {
    var range: Double
    let center: Location
}

var storeArea = DeliveryArea(range: 3, center: storeLocation)

print(String(describing:storeArea))

/*Accesing members*/
print(storeArea.range)

/*Even access to members of members using dot syntax*/
print(storeArea.center.x)

//Updating a value
storeArea.range = 340

print(storeArea.range)

/*Intro to methods*/
let areas = [
    DeliveryArea(range: 5.5, center: Location(x: 2, y: 4)),
    DeliveryArea(range: 4.5, center: Location(x: 9, y: 10))
]
func distance(from: (x: Int, y: Int), to: (x: Int, y: Int)) -> Double {
    let distanceX = Double( from.x - to.x )
    let distanceY = Double( from.y - to.y )
    return sqrt(distanceX * distanceX + distanceY * distanceY )
}
func isInDeliveryRange(_ location: Location) -> Bool {
    for area in areas {
        let distanceToStore = 
            distance(from: (area.center.x, area.center.y),
                       to: (location.x, location.y))
        if distanceToStore < area.range {
            return true
        }
    }
    return false
}

let customerLocationA = Location(x: 8, y: 1)
let customerLocationB = Location(x: 5, y: 5)

print("customerLocationA: \(isInDeliveryRange(customerLocationA))")
print("customerLocationB: \(isInDeliveryRange(customerLocationB))")

/*
  Structures as values
*/
var a = 5
var b = a
print("a: \(a)") // 5
print("b: \(b)") // 5

a = 10
print("a: \(a)") // 10
print("b: \(b)") // 5

//Above, It's called copy-on-assignment

var areaDummy = DeliveryArea(
    range: 2.5,
    center: Location(x: 2, y: 4)
);
var areaB = areaDummy;
print("areaDummy: \(areaDummy.range)")
print("areaB: \(areaB.range)")

areaB.range = 4
print("areaDummy: \(areaDummy.range)")
print("areaB: \(areaB.range)")

/*
  areaB.range didn't pick up the new value set in areaDummy.range
  areaDummy and areaB are very independents
*/


/*structs with protocols
 Protocols contain a set of requirements that conforming
 types must satisfy. A single example:
 protocol CustomStringConvertible {
     public var description: String { get }
 }
*/
/*That protocol contains the textMessage property requirement*/
struct DeliveryAreaWithProtocol: CustomStringConvertible {
    var range : Double
    let center: Location

    var description: String {
        let previewMessage = "Protocol CustomStringConvertible say's: I have a description property, and you must implement an equal property"
        return "\(previewMessage), so Area with range: \(range), location-> x: \(center.x) - y: \( center.y ) "
    }

    func contains(_ location: Location) -> Bool {
        let distanceFromCenter =
            distance(from: (center.x, center.y), to: (location.x, location.y))
        return distanceFromCenter < range
    }
}
let area1 = DeliveryAreaWithProtocol(
    range: 2.5,
    center: Location(x: 2, y: 4)
);
print(area1)
//print(String(describing: area1))