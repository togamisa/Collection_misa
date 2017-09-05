//
//  ViewController.swift
//  Collection
//
//  Created by 戸苅未紗子 on 2017/07/19.
//  Copyright © 2017年 戸苅未紗子. All rights reserved.
//
import UIKit

private let reuseIdentifier = "custom"
var imageArray = [String]()


class ViewController: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    
    @IBOutlet weak var collectionView: UICollectionView!
    override func viewDidLoad() {
        super.viewDidLoad()
        collectionView.dataSource = self
        collectionView.delegate = self
        let nibName = UINib(nibName: "CustomCollectionViewCell", bundle:nil)
        imageArray = ["sugano.jpg", "download.jpg", "IMG_0746.JPG", "WS001117.jpg"]
        collectionView.register(nibName, forCellWithReuseIdentifier: reuseIdentifier)

        // Screen Size の取得
        let screenWidth:CGFloat = view.frame.size.width
        let screenHeight:CGFloat = view.frame.size.height
        
        
        // Cellに使われるクラスを登録.

          }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }

    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return imageArray.count
    }
    
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1
    }
    
    
     func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: reuseIdentifier, for: indexPath) as! CustomCollectionViewCell
         cell.backgroundColor = UIColor.cyan
        cell.imageView?.image = UIImage(named: imageArray[indexPath.row])

        
        return cell
    }
    
    
    //MARK: -flow layout
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: 120, height: 120)
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return 5
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumInteritemSpacingForSectionAt section: Int) -> CGFloat {
        return 6
    }
}

