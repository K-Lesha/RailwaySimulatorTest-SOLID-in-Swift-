import Foundation

final class Carriage: Vehicle {
    typealias Configuration = CarriageConfiguration
    
    weak var train: Train?
    
    internal var configuration: Configuration
    
    init(configuration: Configuration) {
        self.configuration = configuration
    }
}
