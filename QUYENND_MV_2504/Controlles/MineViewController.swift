//
//  MineViewController.swift
//  QUYENND_MV_2504
//
//  Created by Quyen Nguyen on 12/3/25.
//

import UIKit

class MineViewController: BaseViewController {
//    var oneTarotCard: TarotCard = TarotCard(imageCard: "", description: "", imageMeme: "", memeDescription: "")
    var selectedCard: TarotCard?
    private func createButton(title: String, action: Selector) -> UIButton {
        let button = UIButton(type: .system)
        button.setTitle(title, for: .normal)
        button.setTitleColor(UIColor(rgb: 0x01E5BB), for: .normal)
        button.translatesAutoresizingMaskIntoConstraints = false
        button.addTarget(self, action: action, for: .touchUpInside)
        return button
    }
    
    let screenHeight = UIScreen.main.bounds.height
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if let selectedCard = selectedCard {
            setupUiMineVC(oneCard: selectedCard)
            print(selectedCard)
        }
        
    }
    
    func setupUiMineVC(oneCard: TarotCard) {
        let closeButton = createButton(title: "[Close]", action: #selector(closeHandel))
        view.addSubview(closeButton)

        let shareButton = createButton(title: "[Share]", action: #selector(shareHandle))
        view.addSubview(shareButton)

        let containerCard = UIView()
        containerCard.layer.cornerRadius = 15
        containerCard.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(containerCard)

        let labelCard = UILabel()
        labelCard.textColor = .white
        labelCard.text = oneCard.description
        labelCard.numberOfLines = 1
        labelCard.textAlignment = .center
        labelCard.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(labelCard)

        let imageCard = UIImageView()
        imageCard.image = oneCard.imageCard //  UIImage(named: "\(oneCard.imageCard)")
        imageCard.contentMode = .scaleAspectFit
        imageCard.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(imageCard)

        let containerViewMeme = UIView()
        containerViewMeme.backgroundColor = UIColor(red: 20/255, green: 20/255, blue: 60/255, alpha: 1)
        containerViewMeme.layer.cornerRadius = 15
        containerViewMeme.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(containerViewMeme)

        let iconMeme = UIImageView()
        iconMeme.image = UIImage(named: "iconMeme")
        iconMeme.contentMode = .scaleAspectFit
        iconMeme.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(iconMeme)


        let labelMeme = UILabel()
        labelMeme.textColor = .white
        labelMeme.text = oneCard.memeDescription
        labelMeme.numberOfLines = 0
        labelMeme.translatesAutoresizingMaskIntoConstraints = false
        labelMeme.textAlignment = .center
        view.addSubview(labelMeme)

        let imageMeme = UIImageView()
        imageMeme.image = oneCard.imageMeme
        imageMeme.contentMode = .scaleAspectFit
        imageMeme.layer.cornerRadius = 15
        imageMeme.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(imageMeme)
        
        
        imageMeme.setContentHuggingPriority(.defaultHigh, for: .vertical)
        labelMeme.setContentHuggingPriority(.defaultLow, for: .vertical)

        // Auto Layout Constraints
        NSLayoutConstraint.activate([
            closeButton.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 20),
            closeButton.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
            
            shareButton.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 20),
            shareButton.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20),
            
            containerCard.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            containerCard.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 50),
            containerCard.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20),
            containerCard.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
            containerCard.heightAnchor.constraint(equalToConstant: screenHeight / 2), // Chiều cao = 1/2 màn hình
            
            labelCard.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            labelCard.topAnchor.constraint(equalTo:  containerCard.topAnchor, constant: 10),
            labelCard.leadingAnchor.constraint(equalTo: containerCard.leadingAnchor, constant: 10),
            labelCard.trailingAnchor.constraint(equalTo: containerCard.trailingAnchor, constant: -10),
            labelCard.heightAnchor.constraint(equalTo: containerCard.heightAnchor, multiplier: 0.2),
            
            imageCard.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            imageCard.topAnchor.constraint(equalTo: labelCard.bottomAnchor, constant: 10),
            imageCard.leadingAnchor.constraint(equalTo: containerCard.leadingAnchor, constant: 20),
            imageCard.trailingAnchor.constraint(equalTo: containerCard.trailingAnchor, constant: -20),
            imageCard.bottomAnchor.constraint(equalTo: containerCard.bottomAnchor, constant: -20),
            
            containerViewMeme.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            containerViewMeme.topAnchor.constraint(equalTo: containerCard.bottomAnchor),
            containerViewMeme.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
            containerViewMeme.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20),
            containerViewMeme.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -20),
            
            iconMeme.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            iconMeme.topAnchor.constraint(equalTo: containerViewMeme.topAnchor, constant: -20),
            iconMeme.heightAnchor.constraint(equalTo: containerViewMeme.heightAnchor, multiplier: 0.2),
            iconMeme.widthAnchor.constraint(equalTo: containerViewMeme.widthAnchor, multiplier: 0.2),
            
            labelMeme.centerXAnchor.constraint(equalTo: containerViewMeme.centerXAnchor),
            labelMeme.topAnchor.constraint(equalTo: iconMeme.bottomAnchor),
            labelMeme.trailingAnchor.constraint(equalTo: containerViewMeme.trailingAnchor, constant: -20),
            labelMeme.leadingAnchor.constraint(equalTo: containerViewMeme.leadingAnchor, constant: 20),
            labelMeme.heightAnchor.constraint(equalTo: containerViewMeme.heightAnchor, multiplier: 0.2),

            imageMeme.centerXAnchor.constraint(equalTo: containerViewMeme.centerXAnchor),
            imageMeme.topAnchor.constraint(equalTo: labelMeme.bottomAnchor, constant: 10),
            imageMeme.leadingAnchor.constraint(equalTo: containerViewMeme.leadingAnchor, constant: 20),
            imageMeme.trailingAnchor.constraint(equalTo: containerViewMeme.trailingAnchor, constant: -20),
            imageMeme.bottomAnchor.constraint(equalTo: containerViewMeme.bottomAnchor, constant: -10),
            
            ])
    }
    
    // xử lý sự kiện
    @objc func closeHandel() {
        navigationController?.popViewController(animated: true)
    }
    
    @objc func shareHandle() {
        print("Chia sẻ cho thầy đi!!!!!!!")
    }
}
