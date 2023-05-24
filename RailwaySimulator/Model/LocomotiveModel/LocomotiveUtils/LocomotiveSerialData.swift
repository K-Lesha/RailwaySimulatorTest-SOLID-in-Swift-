import Foundation

struct LocomotiveSerialData: VehicleSerialData {
    var modelDesignation: String
    var manufacturer: TrainManufacturer
    var yearOfConstruction: Int
    var serialNumber: String
    var locomotiveType: LocomotiveType
    
    init(modelDesignation: String,
         manufacturer: TrainManufacturer,
         yearOfConstruction: Int,
         serialNumber: String,
         locomotiveType: LocomotiveType) {
        self.modelDesignation = modelDesignation
        self.manufacturer = manufacturer
        self.yearOfConstruction = yearOfConstruction
        self.serialNumber = serialNumber
        self.locomotiveType = locomotiveType
    }
}
