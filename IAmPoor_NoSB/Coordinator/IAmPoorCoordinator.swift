//
//  IAmPoorCoordinator.swift
//  IAmPoor_NoSB
//
//  Created by Raúl Pavón on 28/01/22.
//

import Foundation
import UIKit

class IAmPoorCoordinator {
    var navigationController: UINavigationController
    private let factory =  IAmPoorFactoryImp()
    
    init(navigationController: UINavigationController) {
        self.navigationController = navigationController
    }
    
    func start() {
        let iAmPoorViewController = factory.makeIAmPoorViewController(iAmPoorCoordinator: self)
        navigationController.setViewControllers([iAmPoorViewController], animated: false)
    }
}
