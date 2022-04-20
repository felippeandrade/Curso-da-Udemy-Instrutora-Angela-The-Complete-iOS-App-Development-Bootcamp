func exercise() {
    
    var stockTickers: [String: String] = [
        "APPL" : "Apple Inc",
        "HOG": "Harley-Davidson Inc",
        "BOOM": "Dynamic Materials",
        "HEINY": "Heineken",
        "BEN": "Franklin Resources Inc"
    ]
    
    stockTickers["WORK"] = "Slack Technologies Inc" //adiciona em qualquer index
    stockTickers["BOOM"] = "DMC Global Inc" //atualiza
    
    print(stockTickers["WORK"]!)
    print(stockTickers["BOOM"]!)
    print(stockTickers)
}

exercise()
