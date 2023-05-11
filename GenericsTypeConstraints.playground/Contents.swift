// without generics

func findIndex(ofString valueToFind: String, in array: [String]) -> Int? {
    for (index, value) in array.enumerated(){
        if value == valueToFind {
            return index
        }
    }
    return nil
}

let animals = ["cat", "dog", "cow"]
if let foundIndex = findIndex(ofString: "dog", in: animals){
    print("The index of dog is \(foundIndex)")
}else{
    print("Nothying found in that name")
}

// with generics

func findIndexUsingGenerics<T: Equatable>(of valueToFind: T, in array:[T]) -> Int? {
    for (index, value) in array.enumerated(){
        if value == valueToFind {
            return index
        }
    }
        return nil
}

if let foundIndex = findIndexUsingGenerics(of: "dog", in: animals){
    print("The index of dog using generics is \(foundIndex)")
}else{
    print("Nothying found in that name")
}
