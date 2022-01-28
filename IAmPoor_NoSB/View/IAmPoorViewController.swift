//
//  IAmPoorViewController.swift
//  IAmPoor_NoSB
//
//  Created by Raúl Pavón on 28/01/22.
//

import UIKit

class IAmPoorViewController: UIViewController {

    weak var iAmPoorCoordinator: IAmPoorCoordinator?
        private let factory: IAmPoorFactory
        
        private lazy var iAmPoorUIView: IAmPoorUIView = {
            let view = IAmPoorUIView(frame: .zero)
            view.translatesAutoresizingMaskIntoConstraints = false
            return view
        }()
        
        required init(factory: IAmPoorFactory, iAmPoorCoordinator: IAmPoorCoordinator) {
            self.factory = factory
            self.iAmPoorCoordinator = iAmPoorCoordinator
            super.init(nibName: nil, bundle: nil)
        }
        
        required init?(coder: NSCoder) {
            fatalError("init(coder:) has not been implemented")
        }
        
        override func loadView() {
            super.loadView()
            initComponents()
        }
        
        override func viewWillAppear(_ animated: Bool) {
            super.viewWillAppear(animated)
            self.navigationController?.setNavigationBarHidden(true, animated: animated)
        }
        
        override func viewDidLoad() {
            super.viewDidLoad()
        }
        
        private func initComponents() {
            addComponents()
            setAutolayout()
        }
        
        private func addComponents() {
            view.addSubview(iAmPoorUIView)
        }
        
        private func setAutolayout() {
            NSLayoutConstraint.activate([
                iAmPoorUIView.topAnchor.constraint(equalTo: view.topAnchor),
                iAmPoorUIView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
                iAmPoorUIView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
                iAmPoorUIView.bottomAnchor.constraint(equalTo: view.bottomAnchor),
            ])
        }
}
