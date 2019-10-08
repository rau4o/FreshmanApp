//
//  EatVC.swift
//  FreshmanApplication
//
//  Created by rau4o on 11/11/18.
//  Copyright © 2018 rau4o. All rights reserved.
//

import UIKit

class EatVC: UIViewController {
    
    //MARK: - Outlets
    

    
    
    //MARK:- variables
    
    let arrayColor = [UIColor.red,UIColor.blue,UIColor.purple,UIColor.black,UIColor.green,UIColor.orange]
    
//    let eatreuseIdentifier = "EatcollectionViewCellId"

//    var itemProductArray : [Product] = {
//        var tempArray : [Product] = []
//        for i in 0...10 {
//            var firstProduct  = Product()
//            firstProduct.name = "Coca-cola"
//            firstProduct.imageName = "cola"
//            var secondProduct  = Product()
//            secondProduct.name = "Burger"
//            secondProduct.imageName = "hamburger"
//            tempArray.append(firstProduct)
//            tempArray.append(secondProduct)
//        }
//        return tempArray
//    }()
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
//        collectionView.dataSource = self
//        collectionView.delegate = self
        
//        navigationController?.isNavigationBarHidden = true

        // Do any additional setup after loading the view.
    }
    
    
    
    
//    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
//        if segue.identifier == "showDatailVC" {
//            if let vc = segue.destination as? DetailVC {
//                let product = sender as? Product
//                vc.product = product
//            }
//        }
//    }

    
    @IBAction func closeAction(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
    
    
//    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
//        return itemProductArray.count
//    }
//
//    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
//        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: eatreuseIdentifier, for: indexPath) as! EatCollectionViewCell
//
//        cell.product = itemProductArray[indexPath.row]
//        //            cell.backgroundColor = arrayColor[indexPath.row]
//        return cell
//    }
//    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
//        let product = itemProductArray[indexPath.row]
//        // переходим на следующий контроллер
//        self.performSegue(withIdentifier: "showDatailVC", sender: product)
//
//    }
//


}
