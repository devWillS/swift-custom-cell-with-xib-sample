//
//  SampleViewController.swift
//  swift-custom-cell-with-xib-sample
//
//  Created by devWill on 2018/06/09.
//  Copyright © 2018年 devWill. All rights reserved.
//

import UIKit

class SampleViewController: UIViewController {
    let dataSource = SampleCollectionViewProvider()

    @IBOutlet weak var collectionView: UICollectionView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.

        let nib = UINib(nibName: "SampleCollectionViewCell", bundle: nil)
        collectionView.register(nib, forCellWithReuseIdentifier: "SampleCollectionViewCell")
        
        collectionView.dataSource = dataSource
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

