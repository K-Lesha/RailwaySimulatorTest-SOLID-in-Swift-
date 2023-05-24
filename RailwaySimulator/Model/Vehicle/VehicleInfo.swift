import Foundation

protocol VehicleInfo {
    var basicMass: Kg { get }
    var basicLength: Meter { get }
    var passengerCapacity: Int { get }
    var payloadCapacity: Kg { get }
}
