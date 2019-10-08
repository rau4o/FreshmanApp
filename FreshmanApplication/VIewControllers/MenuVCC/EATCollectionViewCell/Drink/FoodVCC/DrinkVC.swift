//
//  DrinkVC.swift
//  FreshmanApplication
//
//  Created by rau4o on 11/23/18.
//  Copyright © 2018 rau4o. All rights reserved.
//

import UIKit

class DrinkVC: UIViewController,UICollectionViewDelegate,UICollectionViewDataSource {
    
    
    @IBOutlet weak var collectionViewDrinks: UICollectionView!
    
    
    var drinkreuseIdentifier = "drinkCollectionViewCellId"
    
    var itemDrinksArray : [Drinks] = {
        var tempArray : [Drinks] = []
        for i in 0...5 {
            var firstProduct  = Drinks()
            firstProduct.name = "Maxi Tea"
            firstProduct.imageName = "cola"
            var secondProduct  = Drinks()
            secondProduct.name = "Cola"
            secondProduct.imageName = "cola"
            var thirdProduct  = Drinks()
            thirdProduct.name = "Pepsi"
            thirdProduct.imageName = "cola"
            var fourProduct  = Drinks()
            fourProduct.name = "Piko"
            fourProduct.imageName = "cola"
            var fiveProduct = Drinks()
            fiveProduct.name = "Sprite"
            fiveProduct.imageName = "cola"
            tempArray.append(firstProduct)
            tempArray.append(secondProduct)
            tempArray.append(thirdProduct)
            tempArray.append(fourProduct)
            tempArray.append(fiveProduct)
        }
        return tempArray
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        collectionViewDrinks.dataSource = self
        collectionViewDrinks.delegate = self

        // Do any additional setup after loading the view.
    }
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "showDetailDrinks" {
            if let vc = segue.destination as? DetailVCForDrinks {
                let drink = sender as? Drinks
                vc.drink = drink
            }
        }
    }
    
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 5
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: drinkreuseIdentifier, for: indexPath) as! DrinkCollectionViewCell
        
        cell.drinks = itemDrinksArray[indexPath.row]
        return cell
    }
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        let product = itemDrinksArray[indexPath.row]
        // переходим на следующий контроллер
        self.performSegue(withIdentifier: "showDetailDrinks", sender: product)
        
    }
    
    

    

}
