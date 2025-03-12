//
//  UIView+Extensions.swift
//  QUYENND_MV_2504
//
//  Created by Quyen Nguyen on 12/3/25.
//
import UIKit
import AVFoundation
import Toast_Swift

extension UIView
{
    func parentViewController() -> UIViewController? {
        return self.traverseResponderChainForUIViewController() as? UIViewController
    }
    
    private func traverseResponderChainForUIViewController() -> AnyObject? {
        if let nextResponder = self.next {
            if nextResponder is UIViewController {
                return nextResponder
            } else if nextResponder is UIView {
                return (nextResponder as! UIView).traverseResponderChainForUIViewController()
            } else {
                return nil
            }
        }
        return nil
    }
    func roundCorners(corners: UIRectCorner, radius: CGFloat) {
           let path = UIBezierPath(roundedRect: bounds, byRoundingCorners: corners, cornerRadii: CGSize(width: radius, height: radius))
           let mask = CAShapeLayer()
           mask.path = path.cgPath
           layer.mask = mask
       }
    func setDimensions(width: CGFloat, height: CGFloat) {
        translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            widthAnchor.constraint(equalToConstant: width),
            heightAnchor.constraint(equalToConstant: height),
        ])
    }
    func setDimension(multiplier: CGFloat) {
        translatesAutoresizingMaskIntoConstraints = false
        widthAnchor.constraint(equalTo: heightAnchor, multiplier: multiplier).isActive = true
    }
    func pinToView(_ view: UIView) {
        translatesAutoresizingMaskIntoConstraints = false

        NSLayoutConstraint.activate([
            leadingAnchor.constraint(equalTo: view.leadingAnchor),
            topAnchor.constraint(equalTo: view.topAnchor),
            trailingAnchor.constraint(equalTo: view.trailingAnchor),
            bottomAnchor.constraint(equalTo: view.bottomAnchor)
        ])
    }
    func pinToEdges(_ view: UIView) {
        translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            leftAnchor.constraint(equalTo: view.leftAnchor),
            topAnchor.constraint(equalTo: view.topAnchor),
            rightAnchor.constraint(equalTo: view.rightAnchor),
            bottomAnchor.constraint(equalTo: view.bottomAnchor),
        ])
    }
    
    func applyBlurBackground(style: UIBlurEffect.Style,
                             alpha: CGFloat = 1,
                             top: CGFloat = 0,
                             bottom: CGFloat = 0) {
        let blurEffect = UIBlurEffect(style: style)
        let blurEffectView = UIVisualEffectView(effect: blurEffect)
        blurEffectView.translatesAutoresizingMaskIntoConstraints = false
        blurEffectView.alpha = alpha
        addSubview(blurEffectView)
        NSLayoutConstraint.activate([
            blurEffectView.leftAnchor.constraint(equalTo: leftAnchor),
            blurEffectView.topAnchor.constraint(equalTo: topAnchor),
            blurEffectView.rightAnchor.constraint(equalTo: rightAnchor),
            blurEffectView.bottomAnchor.constraint(equalTo: bottomAnchor, constant: bottom),
        ])
    }
    
    func applyGradient(colours: [UIColor])  {
        let gradient: CAGradientLayer = CAGradientLayer()
        gradient.frame = self.bounds
        gradient.colors = colours.map { $0.cgColor }
        gradient.startPoint = CGPoint(x: 0, y: 0.5)
        gradient.endPoint = CGPoint(x: 1, y: 0.5)
        self.layer.insertSublayer(gradient, at: 0)
    }
    
    func generateThumbnail(path: URL, identifier: String,
                           completion: @escaping (_ thumbnail: UIImage?, _ identifier: String) -> Void) {
        
        let asset = AVURLAsset(url: path, options: nil)
        let imgGenerator = AVAssetImageGenerator(asset: asset)
        imgGenerator.appliesPreferredTrackTransform = true
        
        imgGenerator.generateCGImagesAsynchronously(forTimes: [NSValue(time: .zero)]) { _, image, _, _, _ in
            if let image = image {
                DispatchQueue.main.async {
                    completion(UIImage(cgImage: image), identifier)
                }
            }
        }
    }
    
    func displayToast(_ message: String, duration: TimeInterval = 2, position: ToastPosition = .top) {
        guard let window = UIWindow.keyWindow else { return }
        
        window.hideAllToasts()
        window.makeToast(message, duration: duration, position: position )
    }

    func dropShadow() {
        clipsToBounds = false
        self.layer.shadowColor = UIColor.black.cgColor
        self.layer.shadowOpacity = 0.2
        self.layer.shadowOffset = .zero
        self.layer.shadowRadius = 10
    }

    func fadeIn(_ duration: TimeInterval = 0.2, onCompletion: (() -> Void)? = nil) {
        self.alpha = 0
        self.isHidden = false
        UIView.animate(withDuration: duration) {
            self.alpha = 1
        } completion: { _ in
            onCompletion?()
        }
    }

    func fadeOut(_ duration: TimeInterval = 0.2, onCompletion: (() -> Void)? = nil) {
        UIView.animate(withDuration: duration) {
            self.alpha = 0
        } completion: { _ in
            self.isHidden = true
            onCompletion?()
        }
    }
    func anchor(leading: NSLayoutXAxisAnchor? = nil, paddingLeading: CGFloat = 0,
                top: NSLayoutYAxisAnchor? = nil, paddingTop : CGFloat = 0,
                trailing: NSLayoutXAxisAnchor? = nil, paddingTrailing: CGFloat = 0,
                bottom : NSLayoutYAxisAnchor? = nil, paddingBottom : CGFloat = 0,
                width: CGFloat? = nil, height: CGFloat? = nil){

        translatesAutoresizingMaskIntoConstraints = false

        if let leading = leading {
            leadingAnchor.constraint(equalTo: leading, constant: paddingLeading).isActive = true
        }

        if let top = top {
            topAnchor.constraint(equalTo: top, constant: paddingTop).isActive = true
        }

        if let trailing = trailing {
            trailingAnchor.constraint(equalTo: trailing, constant: paddingTrailing).isActive = true
        }

        if let bottom = bottom {
            bottomAnchor.constraint(equalTo: bottom, constant: paddingBottom).isActive = true
        }

        if let width = width {
            widthAnchor.constraint(equalToConstant: width).isActive = true
        }

        if let height = height {
            heightAnchor.constraint(equalToConstant: height).isActive = true
        }
    }
    func centerX(centerX: NSLayoutXAxisAnchor, paddingX: CGFloat = 0)  {
        translatesAutoresizingMaskIntoConstraints = false
        centerXAnchor.constraint(equalTo: centerX , constant: paddingX).isActive = true
    }

    func centerY(centerY: NSLayoutYAxisAnchor, paddingY: CGFloat = 0)  {
        translatesAutoresizingMaskIntoConstraints = false
        centerYAnchor.constraint(equalTo: centerY , constant: paddingY).isActive = true
    }

    func center(centerX: NSLayoutXAxisAnchor?, centerY: NSLayoutYAxisAnchor?)  {
        translatesAutoresizingMaskIntoConstraints = false
        if let centerX = centerX {
            self.centerX(centerX: centerX)
        }

        if let centerY = centerY {
            self.centerY(centerY: centerY)
        }
    }
}
