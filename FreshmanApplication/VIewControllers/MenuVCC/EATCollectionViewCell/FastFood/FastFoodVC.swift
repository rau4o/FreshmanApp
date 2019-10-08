//
//  FastFoodVC.swift
//  FreshmanApplication
//
//  Created by rau4o on 11/25/18.
//  Copyright © 2018 rau4o. All rights reserved.
//

import UIKit

class FastFoodVC: UIViewController,UICollectionViewDelegate,UICollectionViewDataSource {
   
    
    var itemsFastArray: [Fast] = {
        var arr:[Fast] = []
        for i in 0...10 {
            var f = Fast()
            f.name = "Doner"
            f.imageName = "hamburger"
            var s = Fast()
            s.name = "Pizza"
            s.imageName = "hamburger"
            var ss = Fast()
            ss.name = "Hamburger"
            ss.imageName = "hamburger"
            var t = Fast()
            t.name = "Hot-Dog"
            t.imageName = "hamburger"
            arr.append(f)
            arr.append(s)
            arr.append(ss)
            arr.append(t)
        }
        return arr
    }()
   
    @IBOutlet weak var collectionView: UICollectionView!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        collectionView.delegate = self
        collectionView.dataSource = self
        // Do any additional setup after loading the view.
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "showFastFoodVC" {
            if let vc = segue.destination as? DetailFastFoodVC {
                let fast = sender as? Fast
                vc.fast = fast
            }
            
        }
    }
    
    
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 4
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "fastFoodCollectionViewID", for: indexPath) as! FastFoodCollectionViewCell
        
        cell.fast = itemsFastArray[indexPath.row]
        
        return cell
    }
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        let sweet = itemsFastArray[indexPath.row]
        
        performSegue(withIdentifier: "showFastFoodVC", sender: sweet)
    }

  

}
