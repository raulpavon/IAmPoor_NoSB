//
//  IAmPoorUIView.swift
//  IAmPoor_NoSB
//
//  Created by Raúl Pavón on 28/01/22.
//

import UIKit

class IAmPoorUIView: UIView {
    
    enum IAmPoorUIViewConstraints {
        enum LbIAmPoor {
            static let fontSize: CGFloat = 40
            static let top: CGFloat = 112
            static let height: CGFloat = 47
        }
        enum imgCoal {
            static let top: CGFloat = 109
            static let height: CGFloat = 251
            static let width: CGFloat = 270
        }
    }
    
    private lazy var mainContainer: UIView = {
        let view = UIView(frame: CGRect.zero)
        view.backgroundColor = .systemPink
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    private let imgCoal: UIImageView = {
        let image = UIImageView(image: UIImage(named: GlobalConstants.IAmPoor.imageName))
        image.contentMode = .scaleAspectFit
        image.translatesAutoresizingMaskIntoConstraints = false
        return image
    }()
    
    private let lbIAmPoor: UILabel = {
        let label = UILabel(frame: .zero)
        label.translatesAutoresizingMaskIntoConstraints = false
        label.font = UIFont(name: GlobalConstants.Font.elvetica, size: IAmPoorUIViewConstraints.LbIAmPoor.fontSize)
        label.textColor = .systemGreen
        label.text = GlobalConstants.IAmPoor.title
        label.numberOfLines = 0
        label.lineBreakMode = .byWordWrapping
        return label
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        initComponents()
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
    }
    
    private func initComponents() {
        addComponents()
        setAutolayout()
    }
    
    private func addComponents() {
        addSubview(mainContainer)
        addSubview(imgCoal)
        addSubview(lbIAmPoor)
    }
    
    private func setAutolayout() {
        NSLayoutConstraint.activate([
            mainContainer.topAnchor.constraint(equalTo: topAnchor),
            mainContainer.leadingAnchor.constraint(equalTo: leadingAnchor),
            mainContainer.trailingAnchor.constraint(equalTo: trailingAnchor),
            mainContainer.bottomAnchor.constraint(equalTo: bottomAnchor),
            
            lbIAmPoor.topAnchor.constraint(equalTo: safeAreaLayoutGuide.topAnchor, constant: IAmPoorUIViewConstraints.LbIAmPoor.top),
            lbIAmPoor.centerXAnchor.constraint(equalTo: centerXAnchor),
            lbIAmPoor.heightAnchor.constraint(equalToConstant: IAmPoorUIViewConstraints.LbIAmPoor.height),
            
            imgCoal.topAnchor.constraint(equalTo: lbIAmPoor.bottomAnchor, constant: IAmPoorUIViewConstraints.imgCoal.top),
            imgCoal.centerXAnchor.constraint(equalTo: centerXAnchor),
            imgCoal.heightAnchor.constraint(equalToConstant: IAmPoorUIViewConstraints.imgCoal.height),
            imgCoal.widthAnchor.constraint(equalToConstant: IAmPoorUIViewConstraints.imgCoal.width),
        ])
    }
}
