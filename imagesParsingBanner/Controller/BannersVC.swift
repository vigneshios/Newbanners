//
//  ViewController.swift
//  imagesParsingBanner
//
//  Created by vignesh on 9/25/17.
//  Copyright © 2017 vignesh. All rights reserved.
//

import UIKit

class BannersVC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
}

extension BannersVC : UICollectionViewDataSource, UICollectionViewDelegate {
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1
    }
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 15
    }
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "bannerscell", for: indexPath) as! BannerCell
        
        return cell
    }
}
