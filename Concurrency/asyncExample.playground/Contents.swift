import Foundation

DispatchQueue.main.async{
    for i in 0...3{
        print(i)
    }
}

for i in 4...6{
    print(i)
}

DispatchQueue.main.async{
    print("7")
}
