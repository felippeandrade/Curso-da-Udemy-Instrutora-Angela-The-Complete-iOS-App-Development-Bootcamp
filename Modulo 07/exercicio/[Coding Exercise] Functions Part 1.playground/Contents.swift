var outerArray = [[String]]() //cria array multiplo
var outerIndex = 0 //index de cada um dos 7 elementos do array grande (multiplo)

var innerArray = ["⬜️", "⬜️", "⬜️", "⬜️", "⬜️", "⬜️", "⬜️"]
var innerIndex = 0 //index de cada elemento dentro de 1 array pequeno

func createWorld() {
    
    for _ in 0...6 {
        outerArray.append([]) //cria 1 array com 7 elementos, sendo elemento um array vazio
    }
    for i in 0...6 {
        outerArray[i] = innerArray //cada elemento do array acima é adicionado com 7 arrays
    }
    //print(outerArray) //print todo o array multiplo em uma linha
}

func start() {
    createWorld();
    outerArray[0][0] = "🦊" //[outerIndex][innerIndex]
    outerArray[5][4] = "🌽"
    for i in 0...6 {
        print(outerArray[i]) //imprime em cada linha um elemento do array
    }
}

func locateFox() {
    for i in 0..<outerArray.count - 1 {
        if let n1 = outerArray.firstIndex(where: {$0[i] ==  "🦊"})  {
            outerIndex = n1
        }
        if let n2 = outerArray[outerIndex].firstIndex(where: {$0 ==  "🦊"}) {
            innerIndex = n2
        }
    }
    //print("\(outerIndex)\(innerIndex)")
}

func left() {
    locateFox()
    if innerIndex > 0 { // ou // < innerArray.count ?
        outerArray[outerIndex][innerIndex] = "⬜️"
        outerArray[outerIndex][innerIndex - 1] = "🦊"
    } else {
        print("can't go further left.")
    }
}

func right() {
    locateFox()
    if (innerIndex < innerArray.count) {
        outerArray[outerIndex][innerIndex] = "⬜️"
        outerArray[outerIndex][innerIndex + 1] = "🦊"
    } else {
        print("Can't go further right.")
    }
}

func up() {
    locateFox()
    if outerIndex > 0 { // ou // < innerArray.count ?
        outerArray[outerIndex][innerIndex] = "⬜️"
        outerArray[outerIndex - 1][innerIndex] = "🦊"
    } else {
        print("Can't go further up.")
    }
}

func down() {
    locateFox()
    if outerIndex < outerArray.count {
        outerArray[outerIndex][innerIndex] = "⬜️"
        outerArray[outerIndex + 1][innerIndex] = "🦊"
    } else {
        print("Can't go further down.")
    }
}

func visualise() {
    for i in 0...6 {
        print(outerArray[i])
    }
}

print("---Starting map---")
start()

right()
right()
right()
right()
down()
down()
down()
down()
down()

print("\n---Final map---")
visualise();
