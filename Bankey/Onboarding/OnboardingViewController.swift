//
//  OnboardingViewController.swift
//  Bankey
//
//  Created by Imalka Muthukumara on 2022-06-14.
//

import Foundation
import UIKit

class OnboardingViewController: UIViewController{
    
    let stackView = UIStackView()
    let label = UILabel()
    let imageView = UIImageView()
    var onboardingText:String
    var imageName:String
    
    override func viewDidLoad() {
        super.viewDidLoad()
        style()
        layout()
    }
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    init(onboardingText: String,imageName: String){
        self.onboardingText = onboardingText
        self.imageName = imageName
        super.init(nibName: nil, bundle: nil)
    }
}

extension OnboardingViewController{
    
    func style(){
        view.backgroundColor = .systemBackground 
        
        stackView.translatesAutoresizingMaskIntoConstraints = false
        stackView.axis = .vertical
        stackView.spacing = 20
        
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.contentMode = .scaleAspectFit
        imageView.image = UIImage(named: imageName)
        
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textAlignment = .center
        label.text = onboardingText
        label.adjustsFontForContentSizeCategory = true
        label.textColor = .black
        label.numberOfLines = 0
        label.font = UIFont.preferredFont(forTextStyle: .title1)
    }
    
    func layout(){
        stackView.addArrangedSubview(imageView)
        stackView.addArrangedSubview(label)
        view.addSubview(stackView)
        
        NSLayoutConstraint.activate([
            stackView.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            stackView.centerYAnchor.constraint(equalTo: view.centerYAnchor ),
            stackView.leadingAnchor.constraint(equalToSystemSpacingAfter: view.leadingAnchor, multiplier: 1),
            view.trailingAnchor.constraint(equalToSystemSpacingAfter: stackView.trailingAnchor, multiplier: 1)
        ])
        
    }
}
