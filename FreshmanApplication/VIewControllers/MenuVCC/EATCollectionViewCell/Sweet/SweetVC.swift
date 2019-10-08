//
//  SweetVC.swift
//  FreshmanApplication
//
//  Created by rau4o on 11/25/18.
//  Copyright © 2018 rau4o. All rights reserved.
//

import UIKit

class SweetVC: UIViewController,UICollectionViewDelegate,UICollectionViewDataSource {
    
    
    var itemsSweetArray: [Sweet] =  {
        var arr : [Sweet]  = []
        for i in 0...10 {
            var f = Sweet()
            f.name = "Cakes"
            f.imageName = "hamburger"
            var s = Sweet()
            s.name = "Milk Shake"
            s.imageName = "hamburger"
            var t = Sweet()
            t.name = "Slash"
            t.imageName = "hamburger"
            arr.append(f)
            arr.append(s)
            arr.append(t)
        }
        return arr
    }()
    
    
    @IBOutlet weak var collectionView: UICollectionView!
    

    override func viewDidLoad() {
        super.viewDidLoad()

        collectionView.dataSource = self
        collectionView.delegate = self
        // Do any additional setup after loading the view.
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "showDetailSweet" {
            if let vc = segue.destination as? DetailSweetVC {
                let sweet = sender as? Sweet
                vc.sweet = sweet
            }
        }
        
    }

    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 3
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "sweetCollectionViewID", for: indexPath) as! SweetCollectionViewCell
        
        cell.sweet = itemsSweetArray[indexPath.row]
        return cell
    }
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        let sweet = itemsSweetArray[indexPath.row]
        
        performSegue(withIdentifier: "showDetailSweet", sender: sweet)
    }
}
