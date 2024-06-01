//
//  MainViewController.swift
//  Dicee
//
//  Created by Sergey Zakurakin on 22/05/2024.
//

import UIKit

final class MainViewController: UIViewController {
    
    private let backgroundImage: UIImageView = {
        let imageView = UIImageView()
        imageView.image = UIImage(named: "newbackground")
        imageView.contentMode = .scaleAspectFill

        imageView.translatesAutoresizingMaskIntoConstraints = false
        return imageView
    }()
    
    private let topLogoImage: UIImageView = {
        let logoImage = UIImageView()
        logoImage.image = UIImage(named: "diceeLogo")
        logoImage.contentMode = .scaleAspectFit
        
        logoImage.translatesAutoresizingMaskIntoConstraints = false
        return logoImage
    }()
    
    private var diceeOneImage: UIImageView = {
        let imageView = UIImageView()
        imageView.image = UIImage(named: "dice1")
        imageView.contentMode = .scaleAspectFit
        
        imageView.translatesAutoresizingMaskIntoConstraints = false
        return imageView
    }()
    
    private let diceeTwoImage: UIImageView = {
        let imageView = UIImageView()
        imageView.image = UIImage(named: "dice2")
        imageView.contentMode = .scaleAspectFit
        
        imageView.translatesAutoresizingMaskIntoConstraints = false
        return imageView
    }()

    
     private lazy var rollButton: UIButton = {
        let button = UIButton(type: .system)
        button.setTitle("Roll", for: .normal)
        button.titleLabel?.font = .systemFont(ofSize: 24)
        button.contentMode = .scaleAspectFit
        button.layer.cornerRadius = 12
        button.tintColor = .white
        button.backgroundColor = UIColor(red: 155/255, green: 28/255, blue: 31/255, alpha: 1)
        
        button.addTarget(self, action: #selector(rollButtonPressed), for: .touchUpInside)
    
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    @objc func rollButtonPressed() {
        let dices = [#imageLiteral(resourceName: "dice1"), #imageLiteral(resourceName: "dice2"), #imageLiteral(resourceName: "dice3"), #imageLiteral(resourceName: "dice4"), #imageLiteral(resourceName: "dice5"), #imageLiteral(resourceName: "dice5")]
        diceeOneImage.image = dices.randomElement()
        diceeTwoImage.image = dices.randomElement()
    }
        
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupUI()
    }

    private func setupUI() {
        view.addSubview(backgroundImage)
        backgroundImage.topAnchor.constraint(equalTo: view.topAnchor).isActive = true
        backgroundImage.bottomAnchor.constraint(equalTo: view.bottomAnchor).isActive = true
        backgroundImage.leadingAnchor.constraint(equalTo: view.leadingAnchor).isActive = true
        backgroundImage.trailingAnchor.constraint(equalTo: view.trailingAnchor).isActive = true
        
        view.addSubview(topLogoImage)
        topLogoImage.topAnchor.constraint(equalTo: view.topAnchor).isActive = true
        topLogoImage.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 60).isActive = true
        topLogoImage.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -60).isActive = true
        
        view.addSubview(diceeOneImage)
        diceeOneImage.centerYAnchor.constraint(equalTo: view.centerYAnchor, constant: 30).isActive = true
        diceeOneImage.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 60).isActive = true
        diceeOneImage.heightAnchor.constraint(equalToConstant: 100).isActive = true
        diceeOneImage.widthAnchor.constraint(equalToConstant: 100).isActive = true
        
        view.addSubview(diceeTwoImage)
        diceeTwoImage.centerYAnchor.constraint(equalTo: view.centerYAnchor, constant: 30).isActive = true
        diceeTwoImage.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -60).isActive = true
        diceeTwoImage.heightAnchor.constraint(equalToConstant: 100).isActive = true
        
        view.addSubview(rollButton)
        rollButton.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        rollButton.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -220).isActive = true
        rollButton.heightAnchor.constraint(equalToConstant: 60).isActive = true
        rollButton.widthAnchor.constraint(equalToConstant: 120).isActive = true
        
    }    
}

