import Foundation

class LocomotiveConfiguration: VehicleConfiguration {
    typealias Info = LocomotiveInfo
    typealias SerialData = LocomotiveSerialData
    
    var vehicleInfo: Info
    var vehicleSerialData: SerialData
    
    init(vehicleInfo: Info, vehicleSerialData: SerialData) {
        self.vehicleInfo = vehicleInfo
        self.vehicleSerialData = vehicleSerialData
    }
}
