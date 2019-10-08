//
//  BakeryVC.swift
//  FreshmanApplication
//
//  Created by rau4o on 11/25/18.
//  Copyright © 2018 rau4o. All rights reserved.
//

import UIKit

class BakeryVC: UIViewController,UICollectionViewDataSource,UICollectionViewDelegate {
    
    
    
    
    @IBOutlet weak var bakeryCollectionView: UICollectionView!
    
    
    var itemsBakeryArray: [Bakery] = {
        var arr : [Bakery] = []
        for i in 0...10 {
            var first = Bakery()
            first.name = "Poacha"
            first.imageName = "hamburger"
            var second = Bakery()
            second.name = "Pide"
            second.imageName = "hamburger"
            var third = Bakery()
            third.name = "Sosiski"
            third.imageName = "hamburger"
            var four = Bakery()
            arr.append(first)
            arr.append(second)
            arr.append(third)
            
         }
        return arr
    }()
    
//    var itemDrinksArray : [Drinks] = {
//        var tempArray : [Drinks] = []
//        for i in 0...5 {
//            var firstProduct  = Drinks()
//            firstProduct.name = "Maxi Tea"
//            firstProduct.imageName = "cola"
//            var secondProduct  = Drinks()
//            secondProduct.name = "Cola"
//            secondProduct.imageName = "cola"
//            var thirdProduct  = Drinks()
//            thirdProduct.name = "Pepsi"
//            thirdProduct.imageName = "cola"
//            var fourProduct  = Drinks()
//            fourProduct.name = "Piko"
//            fourProduct.imageName = "cola"
//            var fiveProduct = Drinks()
//            fiveProduct.name = "Sprite"
//            fiveProduct.imageName = "cola"
//            tempArray.append(firstProduct)
//            tempArray.append(secondProduct)
//            tempArray.append(thirdProduct)
//            tempArray.append(fourProduct)
//            tempArray.append(fiveProduct)
//        }
//        return tempArray
//    }()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        bakeryCollectionView.delegate = self
        bakeryCollectionView.dataSource = self
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "showDetailBakery" {
            if let vc = segue.destination as? DetailBakeryVC {
                let bakery = sender as? Bakery
                vc.bakery = bakery
            }
        }
    }
    
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 3
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "bakeryCollectionViewId", for: indexPath) as! BakeryCollectionViewCell
        
        cell.bakery = itemsBakeryArray[indexPath.row]
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        let bakery = itemsBakeryArray[indexPath.row]
        
        performSegue(withIdentifier: "showDetailBakery", sender: bakery)
    }
    
//    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
//        return 5
//    }
//    
//    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
//        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: drinkreuseIdentifier, for: indexPath) as! DrinkCollectionViewCell
//        
//        cell.drinks = itemDrinksArray[indexPath.row]
//        return cell
//    }
//    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
//        let product = itemDrinksArray[indexPath.row]
//        // переходим на следующий контроллер
//        self.performSegue(withIdentifier: "showDetailDrinks", sender: product)
//        
//    }
//    
    


}
