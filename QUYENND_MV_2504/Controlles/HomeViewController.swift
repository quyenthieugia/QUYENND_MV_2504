//
//  HomeViewController.swift
//  QUYENND_MV_2504
//
//  Created by Quyen Nguyen on 12/3/25.
//
import UIKit

class HomeViewController: BaseViewController {
    
    private func createButton(title: String, action: Selector) -> UIButton {
        let button = UIButton(type: .system)
        button.setTitle(title, for: .normal)
        button.setTitleColor(.white, for: .normal)
        button.titleLabel?.font = UIFont.fontMavenProBold(18)
        button.layer.borderColor = UIColor.white.cgColor
        button.layer.borderWidth = 1
        button.layer.cornerRadius = 25
        button.translatesAutoresizingMaskIntoConstraints = false
        button.addTarget(self, action: action, for: .touchUpInside)
        return button
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        UIFont.familyNames.forEach({ familyName in
            let fontNames = UIFont.fontNames(forFamilyName: familyName)
            print(familyName, fontNames)
        })
        setupUI()
    }
    
    private func setupUI() {
        let wizardImageView = UIImageView(image: UIImage(named: "wizard_pepe"))
        wizardImageView.contentMode = .scaleAspectFit
        wizardImageView.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(wizardImageView)
        
        let cardImageView = UIImageView(image: UIImage(named: "tarot_cards"))
        cardImageView.contentMode = .scaleAspectFit
        cardImageView.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(cardImageView)
        
        let titleLabel = UILabel()
        titleLabel.text = "Tarot x Meme"
        titleLabel.textColor = UIColor(rgb: 0x01E5BB)
        titleLabel.font = UIFont.fontSkranjiMedium(36)
        titleLabel.textAlignment = .center
        titleLabel.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(titleLabel)
        
        let subtitleLabel = UILabel()
        subtitleLabel.text = "Select mode Tarot"
        subtitleLabel.textColor = .white
        subtitleLabel.font = UIFont.fontMavenProBold(18)
        subtitleLabel.textAlignment = .center
        subtitleLabel.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(subtitleLabel)
        
        let positiveButton = createButton(title: "Overly Positive", action: #selector(positiveButtonTapped))
        let goofyButton = createButton(title: "Goofy", action: #selector(goofyButtonTapped))


        view.addSubview(positiveButton)
        view.addSubview(goofyButton)
        
        // Auto Layout Constraints
        NSLayoutConstraint.activate([
            wizardImageView.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            wizardImageView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 20),
            wizardImageView.widthAnchor.constraint(equalToConstant: 282),
            wizardImageView.heightAnchor.constraint(equalToConstant: 290),
            
            cardImageView.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            cardImageView.topAnchor.constraint(equalTo: wizardImageView.bottomAnchor, constant: -150),
            cardImageView.widthAnchor.constraint(equalToConstant: 292),
            cardImageView.heightAnchor.constraint(equalToConstant: 231),
            
            titleLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            titleLabel.topAnchor.constraint(equalTo: cardImageView.bottomAnchor, constant: 20),
            
            subtitleLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            subtitleLabel.topAnchor.constraint(equalTo: titleLabel.bottomAnchor, constant: 8),
            
            positiveButton.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            positiveButton.topAnchor.constraint(equalTo: subtitleLabel.bottomAnchor, constant: 20),
            positiveButton.widthAnchor.constraint(equalToConstant: 200),
            positiveButton.heightAnchor.constraint(equalToConstant: 50),
            
            goofyButton.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            goofyButton.topAnchor.constraint(equalTo: positiveButton.bottomAnchor, constant: 20),
            goofyButton.widthAnchor.constraint(equalToConstant: 200),
            goofyButton.heightAnchor.constraint(equalToConstant: 50),
        ])
    }
    @objc private func positiveButtonTapped() {
        print("Overly Positive mode selected!")
    }
    @objc private func goofyButtonTapped() {
        print("Goofy mode selected!")
        let goofyVC = ChooseViewController()
        navigationController?.pushViewController(goofyVC, animated: true)
    }
}
