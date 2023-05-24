import Foundation

struct LocomotiveInfo: VehicleInfo {
    var basicMass: Kg
    var basicLength: Meter
    var passengerCapacity: Int
    var payloadCapacity: Kg
    let traction: Kg
    
    init(basicMass: Kg,
         basicLength: Meter,
         passengerCapacity: Int,
         payloadCapacity: Kg,
         traction: Kg) {
        self.basicMass = basicMass
        self.basicLength = basicLength
        self.passengerCapacity = passengerCapacity
        self.payloadCapacity = payloadCapacity
        self.traction = traction
    }
}
