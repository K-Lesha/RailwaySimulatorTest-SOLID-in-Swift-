import Foundation

protocol Vehicle {
    associatedtype Configuration: VehicleConfiguration
    
    var configuration: Configuration { get }
    var train: Train? { get set }
    var basicMass: Kg { get }
    var passengerCapacity: Int { get }
    var payloadCapacity: Kg { get }
    var length: Meter { get }
}

extension Vehicle {
    var basicMass: Kg {
        configuration.vehicleInfo.basicMass
    }
    var passengerCapacity: Int {
        configuration.vehicleInfo.passengerCapacity
    }
    var payloadCapacity: Kg {
        configuration.vehicleInfo.payloadCapacity
    }
    var length: Meter {
        configuration.vehicleInfo.basicLength
    }
    var serialNumber: String {
        configuration.vehicleSerialData.serialNumber
    }
}
