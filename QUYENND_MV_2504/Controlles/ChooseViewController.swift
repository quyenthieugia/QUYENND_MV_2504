//
//  ChooseViewController.swift
//  QUYENND_MV_2504
//
//  Created by Quyen Nguyen on 12/3/25.
//

import UIKit
import FSPagerView

class ChooseViewController: BaseViewController {
    
    var listTarotCard: [TarotCard] = []
    var nameModeSelect: String = ""
    private func createButton(title: String, action: Selector) -> UIButton {
        let button = UIButton(type: .system)
        button.setTitle(title, for: .normal)
        button.setTitleColor(UIColor(rgb: 0x01E5BB), for: .normal)
        button.translatesAutoresizingMaskIntoConstraints = false
        button.addTarget(self, action: action, for: .touchUpInside)
        return button
    }
    
    private let pagerView: FSPagerView = {
            let pager = FSPagerView()
            pager.translatesAutoresizingMaskIntoConstraints = false
            pager.register(FSPagerViewCell.self, forCellWithReuseIdentifier: "cell")
            return pager
        }()
    
    let screenHeight = UIScreen.main.bounds.height
    let screenWidth = UIScreen.main.bounds.width
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupUI()
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        let middleIndex = listTarotCard.count / 2 - 1
        pagerView.scrollToItem(at: middleIndex, animated: false)
    }

    func setupUI() {
        let backButton = createButton(title: "[back]", action: #selector(backButtonTapped))
        view.addSubview(backButton)
        
        let titleLabel = UILabel()
        titleLabel.text = "Tarot x Meme"
        titleLabel.textColor = UIColor(rgb: 0x01E5BB)
        titleLabel.font = UIFont.fontSkranjiMedium(36)
        titleLabel.textAlignment = .center
        titleLabel.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(titleLabel)
        
        let nameMode = UILabel()
        nameMode.text = nameModeSelect
        nameMode.textColor = UIColor(rgb: 0xFFFC5A)
        nameMode.font = UIFont.fontSkranjiMedium(36)
        nameMode.textAlignment = .center
        nameMode.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(nameMode)
        
        let subtitleLabel = UILabel()
        subtitleLabel.text = "Pick a card for today"
        subtitleLabel.textColor = .white
        subtitleLabel.font = UIFont.fontMavenProBold(18)
        subtitleLabel.textAlignment = .center
        subtitleLabel.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(subtitleLabel)
        
        
//        let layout = UICollectionViewFlowLayout()
//        layout.scrollDirection = .horizontal  // Cuộn ngang
//        layout.itemSize.width = 200
//        layout.itemSize.height = layout.itemSize.width * 1.5
//        layout.minimumLineSpacing = -120 // Khoảng cách giữa các item
        
//        let collectionView = UICollectionView(frame: .zero, collectionViewLayout: layout)
//        collectionView.translatesAutoresizingMaskIntoConstraints = false
//        collectionView.backgroundColor = .clear
//        collectionView.delegate = self
//        collectionView.dataSource = self
//        collectionView.showsHorizontalScrollIndicator = false
//        collectionView.register(CardCell.self, forCellWithReuseIdentifier: "CardCell")
//        view.addSubview(collectionView)
        
        pagerView.delegate = self
        pagerView.dataSource = self
        view.addSubview(pagerView)
        
//        let heightWizardImageView: CGFloat = 100
        let wizardImageView = UIImageView(image: UIImage(named: "wizard_pepe"))
        wizardImageView.contentMode = .scaleAspectFit
        wizardImageView.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(wizardImageView)
        
        // Auto Layout Constraints
        NSLayoutConstraint.activate([
            backButton.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
            backButton.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 20),
            
            titleLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            titleLabel.topAnchor.constraint(equalTo: backButton.bottomAnchor, constant: 20),
            
            nameMode.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            nameMode.topAnchor.constraint(equalTo: titleLabel.bottomAnchor, constant: 8),
            
            subtitleLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            subtitleLabel.topAnchor.constraint(equalTo: nameMode.bottomAnchor, constant: 16),
            
//            collectionView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
//            collectionView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
//            collectionView.topAnchor.constraint(equalTo: subtitleLabel.bottomAnchor, constant: 40),
//            collectionView.heightAnchor.constraint(equalToConstant: layout.itemSize.height * 1.2),
            
            pagerView.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            pagerView.topAnchor.constraint(equalTo: subtitleLabel.bottomAnchor, constant: 20),
            pagerView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            pagerView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            pagerView.heightAnchor.constraint(equalToConstant: screenHeight * 0.5),
            
            wizardImageView.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            wizardImageView.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor),
            wizardImageView.heightAnchor.constraint(equalTo: view.heightAnchor, multiplier: 0.2),
            wizardImageView.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 0.2)
            
        ])

        // 🎯 Hiệu ứng Stack (Xếp chồng)
        let transformer = FSPagerViewTransformer(type: .overlap)
            transformer.minimumScale = 0.7  // Tỷ lệ thu nhỏ của các lá bài phía sau
            transformer.minimumAlpha = 0.5  // Độ trong suốt của lá bài phía sau
            pagerView.transformer = transformer

//            pagerView.interitemSpacing = -150  // Giá trị âm giúp các lá bài chồng lên nhau
            pagerView.interitemSpacing = -(screenWidth * 0.45)
        if UIDevice.current.userInterfaceIdiom == .pad {
            // iPad: cell to hơn
            pagerView.itemSize = CGSize(width: screenWidth * 0.6, height: screenHeight * 0.8)
        } else {
            // iPhone: cell nhỏ hơn
            pagerView.itemSize = CGSize(width: screenWidth * 0.6, height: screenHeight * 0.7)
        }
        
    }
    
    // xử lý sự kiện
    @objc func backButtonTapped() {
        print("quay lai di")
        navigationController?.popViewController(animated: true)
    }
}
    
    //MARK: - delegate, datasource
//extension ChooseViewController: UICollectionViewDelegate, UICollectionViewDataSource {
//    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
//        return listTarotCard.count + 21
//    }
//    
//    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
//        guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "CardCell", for: indexPath) as? CardCell else {
//            return UICollectionViewCell()
//        }
//        cell.imageView.image = UIImage(named: "the_card")
//        return cell
//    }
//
//    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
//        let mineVC = MineViewController()
//            mineVC.selectedCard = listTarotCard[indexPath.row]
//            navigationController?.pushViewController(mineVC, animated: true)
//    }

//       // MARK: - Zoom Hiệu ứng Linear
//    func scrollViewDidScroll(_ scrollView: UIScrollView) {
//        guard let collectionView = scrollView as? UICollectionView else { return }
//
//        let centerX = scrollView.contentOffset.x + (scrollView.frame.size.width / 2)
//
//        for cell in collectionView.visibleCells {
//            guard let cardCell = cell as? CardCell else { continue }
//            let basePosition = cardCell.convert(cardCell.bounds, to: self.view)
//            let distance = abs(centerX - basePosition.midX)
//            let scale = max(0.8, 1 - (distance / scrollView.frame.width))
//            cardCell.transform = CGAffineTransform(scaleX: scale, y: scale)
//        }
//    }
//}
extension ChooseViewController : FSPagerViewDelegate, FSPagerViewDataSource {
    
    func numberOfItems(in pagerView: FSPagerView) -> Int {
       return listTarotCard.count
    }
    
    func pagerView(_ pagerView: FSPagerView, cellForItemAt index: Int) -> FSPagerViewCell {
        let cell = pagerView.dequeueReusableCell(withReuseIdentifier: "cell", at: index)
        cell.imageView?.image = UIImage(named: "the_card")
        cell.imageView?.contentMode = .scaleAspectFit
        cell.imageView?.clipsToBounds = true
        return cell
    }
    func pagerView(_ pagerView: FSPagerView, didSelectItemAt index: Int) {
        let mineVC = MineViewController()
//        mineVC.selectedCard = listTarotCard[index]
        mineVC.selectedCard = listTarotCard.randomElement() ?? listTarotCard[0]  // ngẫu nhiên
        navigationController?.pushViewController(mineVC, animated: true)
    }
}
