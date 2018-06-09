//
//  SampleCollectionViewProvider.swift
//  swift-custom-cell-with-xib-sample
//
//  Created by devWill on 2018/06/09.
//  Copyright © 2018年 devWill. All rights reserved.
//

import UIKit

class SampleCollectionViewProvider: NSObject {
    let list = [1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20]
}

extension SampleCollectionViewProvider: UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return list.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: SampleCollectionViewCell.identifier,
                                                            for: indexPath) as? SampleCollectionViewCell else {
                                                                fatalError("SampleCollectionViewCellがありません")
        }
        
        cell.label.text = String(list[indexPath.row])
        
        return cell
    }
    
    
}
