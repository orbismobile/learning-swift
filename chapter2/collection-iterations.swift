/*
  Collection iterations with closures
*/

/*A single closure*/
var multipleClosure: (Int, Int) -> Int
multipleClosure = { (a: Int, b: Int) -> Int in
    return a * b
}
let result = multipleClosure(4, 2)
print(result);

/*A shorthand syntax*/
multipleClosure = {(a: Int, b: Int) -> Int in
    a * b
}

/*even more shortest*/
multipleClosure = {(a, b) in a * b}

/*even more shortest more..*/
multipleClosure = {
    $0 * $1
}