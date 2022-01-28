//
//  IAmPoorFactory.swift
//  IAmPoor_NoSB
//
//  Created by Raúl Pavón on 28/01/22.
//

import Foundation

protocol IAmPoorFactory {
    func makeIAmPoorViewController(iAmPoorCoordinator: IAmPoorCoordinator) -> IAmPoorViewController
}

class IAmPoorFactoryImp: IAmPoorFactory {
    func makeIAmPoorViewController(iAmPoorCoordinator: IAmPoorCoordinator) -> IAmPoorViewController {
        let iAmPoorViewController = IAmPoorViewController(factory: self, iAmPoorCoordinator: iAmPoorCoordinator)
        return iAmPoorViewController
    }
}
