import Foundation

func calculator() {
    print("Digite primeiro Numero")
    let a = Int(readLine()!)! //First input //le entrada no console
    print("Digite primeiro Numero")
    let b = Int(readLine()!)! //Second input //le entrada no console
    //ou
    //let a = 3 //First input
    //let b = 4 //Second input
    
    add(n1: a, n2: b)
    subtract(n1: a, n2: b)
    multiply(n1: a, n2: b)
    divide(n1: a, n2: b)
    
}

func add(n1: Int, n2: Int) {
    print(n1 + n2)
}

func subtract(n1: Int, n2: Int) {
    print(n1 - n2)
}

func multiply(n1: Int, n2: Int) {
    print(n1 * n2)
}

func divide(n1: Int, n2: Int) {
    let decimalN1 = Double(n1)
    let decimalN2 = Double(n2)
    print(decimalN1 / decimalN2)
}

calculator()


