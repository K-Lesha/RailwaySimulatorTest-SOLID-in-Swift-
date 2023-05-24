import Foundation

class TrainBasicInfo {
    var locomotives: [Locomotive] = []
    var carriages: [Carriage] = []
    
    func updateInfo(components: [any Vehicle]) {
        self.locomotives = components.compactMap { $0 as? Locomotive }
        self.carriages = components.compactMap { $0 as? Carriage }
    }
    
    func getTrainBasicMass() -> Kg {
        let locomotivesBasicMass = sum(locomotives, { $0.basicMass })
        let carriegesBasicMass = sum(carriages, { $0.basicMass })
        return locomotivesBasicMass + carriegesBasicMass
    }

    func getTrainPassengerCapacity() -> Int {
        let locomotivesPassangerCapacity = sum(locomotives, { $0.passengerCapacity })
        let carriegesPassengerCapacity = sum(carriages, { $0.passengerCapacity })
        return locomotivesPassangerCapacity + carriegesPassengerCapacity
    }

    func getPayloadCapacity() -> Kg {
        let locomotivesPayloadCapacity = sum(locomotives, { $0.payloadCapacity })
        let carriegesPayloadCapacity = sum(carriages, { $0.payloadCapacity })
        return locomotivesPayloadCapacity + carriegesPayloadCapacity
    }
    
    func getMaxWeightCapacity() -> Kg {
        let payloadCapacity = getPayloadCapacity()
        let passengersWieghtCapacity = Kg(getTrainPassengerCapacity()) * CommonInfo.onePassengerWeight
        
        return payloadCapacity + passengersWieghtCapacity
    }
    
    func getTraingLenght() -> Meter {
        let locomotivesLenght = sum(locomotives, {$0.length})
        let carriagesLenght = sum(carriages, {$0.length})
        return locomotivesLenght + carriagesLenght
    }
    
    func getLocomotivesTraction() -> Kg {
        sum(locomotives, { $0.traction })
    }
}


extension TrainBasicInfo {
    private func sum<T: Vehicle, U: Numeric>(_ vehicles: [T], _ property: (T) -> U) -> U {
        return vehicles.reduce(0) { $0 + property($1) }
    }
}
