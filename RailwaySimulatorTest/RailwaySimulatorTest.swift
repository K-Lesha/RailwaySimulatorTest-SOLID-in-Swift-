import XCTest
import RailwaySimulator

final class TrainTests: XCTestCase {
    
    var train: Train!
    
    override func setUp() {
        super.setUp()
        train = Train(trainData: TrainCurrentData(passengersAmount: 100, cargoWeight: 5000))
        addLocomotiveToTheTrain()
        addFewCarriagesToTheTrain()
    }
    
    override func tearDown() {
        train = nil
        super.tearDown()
    }

    
    func testTrainPassengerCapacity() {
        
        XCTAssertEqual(train.trainPassengerCapacity, 160, "Train passenger capacity should be 160")
    }
    
    func testPayloadCapacity() {
        
        XCTAssertEqual(train.payloadCapacity, 700, "Payload capacity should be 700")
    }
    
    func testEmptyTrainMass() {
            XCTAssertEqual(train.emptyTrainMass, 175000.0, "Train empty mass should be 175000.0")
    }
    
    func testMaxWeightCapacity() {
        XCTAssertEqual(train.maxWeightCapacity, 12700.0, "Max weight capacity should be 12700.0")
    }
    
    func testCurrentTrainWeight() {
        XCTAssertEqual(train.curentTrainWeight, 187500.0, "Current train weight should be 187500.0")
    }
    
    func testTrainLength() {
        XCTAssertEqual(train.trainLenght, 200, "Train length should be 200")
    }
    
    func testTrainCanMove() {
        XCTAssertEqual(train.isTrainCanMove(), true, "Train should be able to move")
    }
    
    func testNeedTrainConductor() {
        XCTAssertEqual(train.isNeedTrainConductor(), true, "Train should need a conductor")
    }
    
    func testTrainConductorsAmountNeeded() {
        XCTAssertEqual(train.trainConductorsAmountNeeded(), 2, "Train should need 2 conductor")
    }
    
    func testAddingTrainComponent() {
         let previousCount = train.componentsCount
         let carriageVehicleInfo = CarriageInfo(basicMass: 30000,
                                                basicLength: 50,
                                                passengerCapacity: 50,
                                                payloadCapacity: 200)
         let carriageSerialData = CarriageSerialData(modelDesignation: "some",
                                                     manufacturer: .inveho,
                                                     yearOfConstruction: 2018,
                                                     serialNumber: "addTest",
                                                     carriageType: .passenger)
         let carriageConfiguration = CarriageConfiguration(vehicleInfo: carriageVehicleInfo,
                                                            vehicleSerialData: carriageSerialData)
         var carriage: any Vehicle = Carriage(configuration: carriageConfiguration)
         train.addTrainComponent(&carriage)
         XCTAssertEqual(train.componentsCount, previousCount + 1, "Adding a component should increase count by one")
     }

     func testDeletingTrainComponent() {
         let previousCount = train.componentsCount
         train.deleteTrainComponent("superUniqueNumber1")
         XCTAssertEqual(train.componentsCount, previousCount - 1, "Deleting a component should decrease count by one")
     }
     
     func testComponentBelongsToTrain() {
         let carriageVehicleInfo = CarriageInfo(basicMass: 30000,
                                                basicLength: 50,
                                                passengerCapacity: 50,
                                                payloadCapacity: 200)
         let carriageSerialData = CarriageSerialData(modelDesignation: "some",
                                                     manufacturer: .inveho,
                                                     yearOfConstruction: 2018,
                                                     serialNumber: "belongsTest",
                                                     carriageType: .passenger)
         let carriageConfiguration = CarriageConfiguration(vehicleInfo: carriageVehicleInfo,
                                                            vehicleSerialData: carriageSerialData)
         var carriage: any Vehicle = Carriage(configuration: carriageConfiguration)
         train.addTrainComponent(&carriage)
         XCTAssertTrue(carriage.train === train, "Component's train should be set to this train")
     }
    
    private func addLocomotiveToTheTrain() {
        let locomotiveVehicleInfo = LocomotiveInfo(basicMass: 85000,
                                                   basicLength: 50,
                                                   passengerCapacity: 10,
                                                   payloadCapacity: 100,
                                                   traction: 80000)
        let locomotiveSerialData = LocomotiveSerialData(modelDesignation: "some",
                                                        manufacturer: .deutscheBahn,
                                                        yearOfConstruction: 2019,
                                                        serialNumber: "uniqueNumber1",
                                                        locomotiveType: .disel)
        let locomotiveConfiguration = LocomotiveConfiguration(vehicleInfo: locomotiveVehicleInfo,
                                                              vehicleSerialData: locomotiveSerialData)
        var locomotive: any Vehicle = Locomotive(configuration: locomotiveConfiguration)
        train.addTrainComponent(&locomotive)
    }
    
    private func addFewCarriagesToTheTrain() {
        //common data
        let carriageVehicleInfo = CarriageInfo(basicMass: 30000,
                                               basicLength: 50,
                                               passengerCapacity: 50,
                                               payloadCapacity: 200)
        //first
        let carriageSerialData1 = CarriageSerialData(modelDesignation: "some",
                                                    manufacturer: .inveho,
                                                    yearOfConstruction: 2018,
                                                    serialNumber: "superUniqueNumber1",
                                                    carriageType: .passenger)
        let carriageConfiguration1 = CarriageConfiguration(vehicleInfo: carriageVehicleInfo,
                                                           vehicleSerialData: carriageSerialData1)
        var carriage1: any Vehicle = Carriage(configuration: carriageConfiguration1)
        train.addTrainComponent(&carriage1)
        
        //second
        let carriageSerialData2 = CarriageSerialData(modelDesignation: "some",
                                                    manufacturer: .inveho,
                                                    yearOfConstruction: 2018,
                                                    serialNumber: "superUniqueNumber2",
                                                     carriageType: .freight)
        let carriageConfiguration2 = CarriageConfiguration(vehicleInfo: carriageVehicleInfo,
                                                           vehicleSerialData: carriageSerialData2)
        var carriage2: any Vehicle = Carriage(configuration: carriageConfiguration1)
        train.addTrainComponent(&carriage2)
        
        //third
        let carriageSerialData3 = CarriageSerialData(modelDesignation: "some",
                                                    manufacturer: .inveho,
                                                    yearOfConstruction: 2018,
                                                    serialNumber: "superUniqueNumber3",
                                                     carriageType: .restaurant)
        let carriageConfiguration3 = CarriageConfiguration(vehicleInfo: carriageVehicleInfo,
                                                           vehicleSerialData: carriageSerialData3)
        var carriage3: any Vehicle = Carriage(configuration: carriageConfiguration1)
        train.addTrainComponent(&carriage3)
    }
}
