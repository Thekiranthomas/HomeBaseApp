//
//  HomeTableViewCell.swift
//  SampleApp
//
//  Created by Kiran Thomas on 05/01/19.
//  Copyright © 2019 HomeBase. All rights reserved.
//

import UIKit

class HomeTableViewCell: UITableViewCell {
    @IBOutlet weak var collectionView: UICollectionView?
    
    func setDataSourceAndDelegate(dataSourceAndDelegate: UICollectionViewDataSource & UICollectionViewDelegate, forIndex index: NSInteger) {
        self.collectionView?.dataSource = dataSourceAndDelegate
        self.collectionView?.delegate = dataSourceAndDelegate
        self.collectionView?.tag = index
        self.collectionView?.reloadData()
    }
}
