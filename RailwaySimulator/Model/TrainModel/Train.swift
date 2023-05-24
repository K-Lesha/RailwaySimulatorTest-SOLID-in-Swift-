import Foundation

final class Train {
    private var components: [any Vehicle] {
        didSet {
            trainBasicInfo.updateInfo(components: components)
        }
    }
      
    private var trainData: TrainCurrentData
    private var trainBasicInfo: TrainBasicInfo
        
    var emptyTrainMass: Kg {
        trainBasicInfo.getTrainBasicMass()
    }
    var trainPassengerCapacity: Int {
        trainBasicInfo.getTrainPassengerCapacity()
    }
    var payloadCapacity: Kg {
        trainBasicInfo.getPayloadCapacity()
    }
    var maxWeightCapacity: Kg {
        trainBasicInfo.getMaxWeightCapacity()
    }
    var curentTrainWeight: Kg {
        getCurrentTrainWeight()
    }
    var trainLenght: Meter {
        trainBasicInfo.getTraingLenght()
    }
    var componentsCount: Int {
        return components.count
    }

    init(trainData: TrainCurrentData) {
        self.trainData = trainData
        self.trainBasicInfo = TrainBasicInfo()
        self.components = []
    }
    
    func addTrainComponent(_ trainComponent: inout any Vehicle) {
        if trainComponent.train != nil {
            print("can't add this component to the train, it already in usage")
        } else {
            components.append(trainComponent)
            trainComponent.train = self
        }
    }
    
    func deleteTrainComponent(_ serialNumber: String) {
        for i in 0..<components.count {
            if components[i].serialNumber == serialNumber {
                components[i].train = nil
            }
        }
        components = components.filter { $0.serialNumber == serialNumber }
        print(componentsCount)
    }
    
    func getCurrentTrainWeight() -> Kg {
        let basicWeight = trainBasicInfo.getTrainBasicMass()
        let passengersWieght = getCurrentPassangersWeight()
        return basicWeight + passengersWieght + trainData.cargoWeight
    }
    
    func getCurrentPassangersWeight() -> Kg {
        return Kg(trainData.passengersAmount) * CommonInfo.onePassengerWeight
    }
    
    func isTrainCanMove() -> Bool {
        let locomotivesTraction = trainBasicInfo.getLocomotivesTraction()
        let maxCapacity = trainBasicInfo.getMaxWeightCapacity()
        return locomotivesTraction >= maxCapacity
    }

    func isNeedTrainConductor() -> Bool {
        (trainData.passengersAmount > 0) ? true : false
    }
    
    func trainConductorsAmountNeeded() -> Int {
        trainData.passengersAmount / CommonInfo.trainConductorPerPassengers
    }
}
