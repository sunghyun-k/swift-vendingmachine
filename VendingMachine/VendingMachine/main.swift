import Foundation

func main() {
    var controller = VendingMachineController()
    var beverageMaker = BeverageMaker()
    
    controller.machine.toggleAdministratorMode()
    try! controller.machine.addItems(beverageMaker.exampleBeverages)
    controller.machine.toggleAdministratorMode()
    
    controller.askToSwitchMode()
    
    while true {
        controller.selectFunctionUserMode()
    }
}

main()
