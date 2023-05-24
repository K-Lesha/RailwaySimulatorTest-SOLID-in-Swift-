import Foundation

class CarriageConfiguration: VehicleConfiguration {
    typealias Info = CarriageInfo
    typealias SerialData = CarriageSerialData
    
    var vehicleInfo: Info
    var vehicleSerialData: SerialData
    
    init(vehicleInfo: Info, vehicleSerialData: SerialData) {
        self.vehicleInfo = vehicleInfo
        self.vehicleSerialData = vehicleSerialData
    }
}
