//
//  CollectionViewController.swift
//  Collection
//
//  Created by 戸苅未紗子 on 2017/07/19.
//  Copyright © 2017年 戸苅未紗子. All rights reserved.
//

import UIKit

private let reuseIdentifier = "cell"

class CollectionViewController: UICollectionViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        self.collectionView!.register(UICollectionViewCell.self, forCellWithReuseIdentifier: reuseIdentifier)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }

    override func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1
    }


    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 100
    }

    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: reuseIdentifier, for: indexPath)
        cell.backgroundColor = UIColor.cyan
        return cell
    }

}
