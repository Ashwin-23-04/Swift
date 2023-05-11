let alphabet: Character = "a"
switch alphabet {
    case "a", "A":
        print("The letter A")
    default:
        print("Not the letter A")
}

// Interval Matching

let count = 22
let msg: String

switch count{
case 0:
    msg = "Zero"
case 1...10:
    msg = "From 1 to 10"
case 11...20:
    msg = "From 11 to 20"
case 21...30:
    msg = "From 21 to 30"
case 31...40:
    msg = "From 31 to 40"
case 41...50:
    msg = "From 41 to 50"
default:
    msg = "More than 50"
}

print(msg)
