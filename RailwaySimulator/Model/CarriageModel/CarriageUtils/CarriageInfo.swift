import Foundation

struct CarriageInfo: VehicleInfo {
    var basicMass: Kg
    var basicLength: Meter
    var passengerCapacity: Int
    var payloadCapacity: Kg
    
    init(basicMass: Kg,
         basicLength: Meter,
         passengerCapacity: Int,
         payloadCapacity: Kg) {
        self.basicMass = basicMass
        self.basicLength = basicLength
        self.passengerCapacity = passengerCapacity
        self.payloadCapacity = payloadCapacity
    }
}
