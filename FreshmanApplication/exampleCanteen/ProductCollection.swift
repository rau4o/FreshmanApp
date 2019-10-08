//
//  ProductCollection.swift
//  FreshmanApplication
//
//  Created by rau4o on 12/2/18.
//  Copyright © 2018 rau4o. All rights reserved.
//

import UIKit

class ProductCollection: UICollectionView,UICollectionViewDataSource,UICollectionViewDelegate {
    
    var itemsFoodArray:[Food] = {
        var arr:[Food] = []
        var first = Food()
        first.name = "Cola"
        first.imageName = "colaa"
        var second = Food()
        second.name = "Pepsi"
        second.imageName = "pepsi"
        var third = Food()
        third.name = "Juice"
        third.imageName = "arizona"
        var four = Food()
        four.name = "Piko"
        four.imageName = "piko"
        var five = Food()
        five.name = "Fuse tea"
        five.imageName = "fusetea"
        var six = Food()
        six.name = "Organic"
        six.imageName = "organic"
        
        arr.append(first)
        arr.append(second)
        arr.append(third)
        arr.append(four)
        arr.append(five)
        arr.append(six)
        
        return arr
    }()
    var itemsSweetArray:[Food] = {
        var arr:[Food] = []
        var first = Food()
        first.name = "Cola"
        first.imageName = "cola"
        var second = Food()
        second.name = "Pepsi"
        second.imageName = "cola"
        var third = Food()
        third.name = "Juice"
        third.imageName = "cola"
        var four = Food()
        four.name = "Piko"
        four.imageName = "cola"
        var five = Food()
        five.name = "Fuse tea"
        five.imageName = "cola"
        var six = Food()
        six.name = "Organic"
        six.imageName = "cola"
        
        arr.append(first)
        arr.append(second)
        arr.append(third)
        arr.append(four)
        arr.append(five)
        arr.append(six)
        
        return arr
    }()
    var itemsfastArray:[Food] = {
        var arr:[Food] = []
        var first = Food()
        first.name = "Cola"
        first.imageName = "hamburger"
        var second = Food()
        second.name = "Pepsi"
        second.imageName = "hamburger"
        var third = Food()
        third.name = "Juice"
        third.imageName = "hamburger"
        var four = Food()
        four.name = "Piko"
        four.imageName = "hamburger"
        var five = Food()
        five.name = "Fuse tea"
        five.imageName = "hamburger"
        var six = Food()
        six.name = "Organic"
        six.imageName = "hamburger"
        
        arr.append(first)
        arr.append(second)
        arr.append(third)
        arr.append(four)
        arr.append(five)
        arr.append(six)
        
        return arr
    }()
    
    var itemsdrinkArray:[Food] = {
        var arr:[Food] = []
        var first = Food()
        first.name = "Cola"
        first.imageName = "cola"
        var second = Food()
        second.name = "Pepsi"
        second.imageName = "cola"
        var third = Food()
        third.name = "Juice"
        third.imageName = "cola"
        var four = Food()
        four.name = "Piko"
        four.imageName = "cola"
        var five = Food()
        five.name = "Fuse tea"
        five.imageName = "cola"
        var six = Food()
        six.name = "Organic"
        six.imageName = "cola"
        
        arr.append(first)
        arr.append(second)
        arr.append(third)
        arr.append(four)
        arr.append(five)
        arr.append(six)
        
        return arr
    }()
    
    
    override func awakeFromNib() {
        self.delegate = self
        self.dataSource = self
    }

    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1
    }
  
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 6
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let row = indexPath.row
        
            
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "ProductCollectionViewCell", for: indexPath) as! ProductCell
        
            cell.food = itemsFoodArray[indexPath.row]
        
            return cell
        
        
     
    }

}
