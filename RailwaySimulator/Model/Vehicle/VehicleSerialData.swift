import Foundation

protocol VehicleSerialData {
    var modelDesignation: String { get }
    var manufacturer: TrainManufacturer { get }
    var yearOfConstruction: Int { get }
    var serialNumber: String { get }
}
