//
//  BannerCell.swift
//  imagesParsingBanner
//
//  Created by vignesh on 9/25/17.
//  Copyright © 2017 vignesh. All rights reserved.
//

import UIKit

class BannerCell: UICollectionViewCell {
    @IBOutlet weak var profilePicImageView: UIImageView!
    
    @IBOutlet weak var bannerImageView: UIImageView!
    
    @IBOutlet weak var descriptionTextView: UITextView!
    
    var flipped = false
    
    
    
    override func layoutSubviews() {
        profilePicImageView.layer.cornerRadius = profilePicImageView.frame.size.width/2
        profilePicImageView.layer.borderColor = UIColor.lightGray.cgColor
        profilePicImageView.layer.borderWidth = 1.0
        profilePicImageView.clipsToBounds = true
        
        bannerImageView.layer.cornerRadius = 10.0
        bannerImageView.clipsToBounds = true
    }
    
    
    @IBAction func buttonTappedFlip(_ sender: Any) {
        
        flipped = !flipped
        
        let fromView = flipped ? bannerImageView : descriptionTextView
        let toView = flipped ? descriptionTextView : bannerImageView
        
        
        
        // UIView.transition(from: fromView, to: toView, duration: 3.0, options: [], completion: nil)
        UIView.transition(from: fromView, to: toView, duration: 1.0, options: [.showHideTransitionViews]) { (_) in
            
            let transition = CATransition()
            transition.type = "rippleEffect"
            transition.subtype = "fromRight"
            transition.duration = 3.0
            fromView.layer.add(transition, forKey: "animate")
            toView.layer.add(transition, forKey: "animate")
            
            return
            
        }
        
        
    }
    
    
    
    func configureCell() {
//        let mask = UIImageView(image: #imageLiteral(resourceName: "star1"))
//        mask.frame = profilePicImageView.bounds
//        profilePicImageView.mask = mask
    }
    
}
