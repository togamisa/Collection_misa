//
//  ViewController.swift
//  Collection
//
//  Created by 戸苅未紗子 on 2017/07/19.
//  Copyright © 2017年 戸苅未紗子. All rights reserved.
//
import UIKit

private let reuseIdentifier = "custom"


class ViewController: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource {
    
    @IBOutlet weak var collectionView: UICollectionView!
    override func viewDidLoad() {
        super.viewDidLoad()
        collectionView.dataSource = self
        collectionView.delegate = self
        let nibName = UINib(nibName: "CustomCollectionViewCell", bundle:nil)
        
        collectionView.register(nibName, forCellWithReuseIdentifier: reuseIdentifier)
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
   func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1
    }
    
    
   func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 100
    }
    
     func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: reuseIdentifier, for: indexPath) as! CustomCollectionViewCell
         cell.backgroundColor = UIColor.cyan
        return cell
    }
    
    
}

