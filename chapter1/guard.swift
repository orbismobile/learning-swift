/*
  guards
*/

/*
  We have the next function called "calculateNumberOfSides"
*/
func calculateNumberOfSides(shapeName: String) -> Int? {
    switch shapeName {
    case "Triangle":
        return 3
    case "Square":
        return 4
    case "Rectangle":
        return 4
    case "Pentagon":
        return 5
    case "Hexagon":
        return 6
    default:
        return nil
    }
}

/*You could use that function like so:*/
func maybePrintSides(shapeName: String) {
    let sides = calculateNumberOfSides(shapeName: shapeName)

    //Check if the side may be returns a nil value
    if let sides = sides {
        print("A \(shapeName) has \(sides) sides.")
    } else {
        print("I don't know the number of sides for '\(shapeName)'.")
    }
}

//Nothing bad, executing
maybePrintSides(shapeName: "none")
maybePrintSides(shapeName: "Pentagon")

/*Guards to rescue*/
func maybePrintSidesByGuard(shapeName: String){
    guard let numSides: Int = calculateNumberOfSides(shapeName: shapeName) else {
        print("I don't know the number of side for \(shapeName).")
        return
    }
    print("A \(shapeName) has \(numSides) sides.")
}

maybePrintSidesByGuard(shapeName: "none")
maybePrintSidesByGuard(shapeName: "Triangle")

/*Its the same idea for if-else, but using the guard syntax allow to use check boolean expressions and optional bindings*/
