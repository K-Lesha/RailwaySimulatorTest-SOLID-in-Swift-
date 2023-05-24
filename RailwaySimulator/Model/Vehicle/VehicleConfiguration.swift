import Foundation

protocol VehicleConfiguration {
    associatedtype Info: VehicleInfo
    associatedtype SerialData: VehicleSerialData
    
    var vehicleInfo: Info { get }
    var vehicleSerialData: SerialData { get }
}
