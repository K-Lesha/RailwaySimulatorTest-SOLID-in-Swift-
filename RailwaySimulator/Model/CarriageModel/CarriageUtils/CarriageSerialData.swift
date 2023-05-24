import Foundation

struct CarriageSerialData: VehicleSerialData {
    var modelDesignation: String
    var manufacturer: TrainManufacturer
    var yearOfConstruction: Int
    var serialNumber: String
    var carriageType: CarriageType
    
    init(modelDesignation: String,
         manufacturer: TrainManufacturer,
         yearOfConstruction: Int,
         serialNumber: String,
         carriageType: CarriageType) {
        self.modelDesignation = modelDesignation
        self.manufacturer = manufacturer
        self.yearOfConstruction = yearOfConstruction
        self.serialNumber = serialNumber
        self.carriageType = carriageType
    }
}
