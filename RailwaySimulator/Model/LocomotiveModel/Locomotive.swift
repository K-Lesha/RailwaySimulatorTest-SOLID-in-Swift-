import Foundation

final class Locomotive: Vehicle {
    typealias Configuration = LocomotiveConfiguration

    weak var train: Train?
    internal var configuration: Configuration
    var traction: Kg {
        configuration.vehicleInfo.traction
    }

    init(configuration: Configuration) {
        self.configuration = configuration
    }
}
