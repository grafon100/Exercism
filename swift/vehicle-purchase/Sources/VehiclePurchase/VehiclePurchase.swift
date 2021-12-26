func canIBuy(vehicle: String, price: Double, monthlyBudget: Double) -> String {
    let monthlyPay = price / 60
    let diff = monthlyPay - monthlyBudget
    
    guard (diff > 10) || (diff < -10) else { return "I'll have to be frugal if I want a \(vehicle)" }
    
    guard price < 600 else { return "Darn! No \(vehicle) for me" }

    return "Yes! I'm getting a \(vehicle)"
}


func licenseType(numberOfWheels wheels: Int) -> String {
    switch wheels {
    case 2...3:
        return "You will need a motorcycle license for your vehicle"
    case 4 , 6:
        return "You will need an automobile license for your vehicle"
    case 18:
        return "You will need a commercial trucking license for your vehicle"
    default:
        return "We do not issue licenses for those types of vehicles"
    }
}



func registrationFee(msrp: Int, yearsOld: Int) -> Int {

    guard yearsOld < 10 else { return 25 }
    
    let price = max(msrp, 25_000)
    return calculateFee(price: price, years: yearsOld)
}

func calculateFee(price: Int, years: Int) -> Int {
    return (price - ((years * 10) * price / 100)) / 100
}
