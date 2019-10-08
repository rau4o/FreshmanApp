//
//  CanteenViewController.swift
//  FreshmanApplication
//
//  Created by rau4o on 12/5/18.
//  Copyright © 2018 rau4o. All rights reserved.
//

import UIKit

class CanteenViewController: UIViewController,UICollectionViewDelegate,UICollectionViewDataSource {
    
    
    
    @IBOutlet weak var segmentedController: UISegmentedControl!
    
    @IBOutlet weak var collectionView: UICollectionView!
    
    
    var itemsDrinkArray:[Canteen] = {
        var arr:[Canteen] = []
        var first = Canteen()
        first.name = "Cola"
        first.imageName = "colaa"
        first.price = "150 tenge"
        var second = Canteen()
        second.name = "Pepsi"
        second.imageName = "pepsi"
        second.price = "150 tenge"
        var third = Canteen()
        third.name = "Juice"
        third.imageName = "arizona"
        third.price = "200 tenge"
        var four = Canteen()
        four.name = "Piko"
        four.imageName = "piko"
        four.price = "200 tenge"
        var five = Canteen()
        five.name = "Fuse tea"
        five.imageName = "fusetea"
        five.price = "150 tenge"
        var six = Canteen()
        six.name = "Organic"
        six.imageName = "organic"
        six.price = "150 tenge"
        
        arr.append(first)
        arr.append(second)
        arr.append(third)
        arr.append(four)
        arr.append(five)
        arr.append(six)
        
        return arr
    }()
    
    var itemsSweetArray:[Canteen] = {
        var arr:[Canteen] = []
        var first = Canteen()
        first.name = "Red barhat"
        first.imageName = "barhat"
        first.price = "250 tenge"
        var second = Canteen()
        second.name = "Cake"
        second.imageName = "keks"
        second.price = "230 tenge"
        var third = Canteen()
        third.name = "Baklava"
        third.imageName = "baklava"
        third.price = "190 tenge"
        var four = Canteen()
        four.name = "Rahat Lukum"
        four.imageName = "rahat"
        four.price = "180 tenge"
        var five = Canteen()
        five.name = "Bisquite"
        five.imageName = "cookie"
        five.price = "150 tenge"
        var six = Canteen()
        six.name = "Chocolate cake"
        six.imageName = "choco"
        six.price = "230 tenge"
        
        arr.append(first)
        arr.append(second)
        arr.append(third)
        arr.append(four)
        arr.append(five)
        arr.append(six)
        
        return arr
    }()
    
    var itemsFastArray:[Canteen] = {
        var arr:[Canteen] = []
        var first = Canteen()
        first.name = "Burger"
        first.imageName = "burger"
        first.price = "500 tenge"
        var second = Canteen()
        second.name = "Pizza"
        second.imageName = "pizza"
        second.price = "1000 tenge"
        var third = Canteen()
        third.name = "Sandwich"
        third.imageName = "sand"
        third.price = "150 tenger"
        var four = Canteen()
        four.name = "Tost"
        four.imageName = "tost"
        four.price = "300 tenge"
        var five = Canteen()
        five.name = "Fries"
        five.imageName = "fries"
        five.price = "300 tenge"
        var six = Canteen()
        six.name = "Hot-Dog"
        six.imageName = "hotdog"
        six.price = "400 tenge"
        
        arr.append(first)
        arr.append(second)
        arr.append(third)
        arr.append(four)
        arr.append(five)
        arr.append(six)
        
        return arr
    }()

    var itemsBakeryArray:[Canteen] = {
        var arr:[Canteen] = []
        var first = Canteen()
        first.name = "Sosiska"
        first.imageName = "sosiska"
        first.price = "150 tenge"
        var second = Canteen()
        second.name = "Pirazhok"
        second.imageName = "pira"
        second.price = "150 tenge"
        var third = Canteen()
        third.name = "Pide"
        third.imageName = "pide"
        third.price = "150 tenge"
        var four = Canteen()
        four.name = "Samsa"
        four.imageName = "samsa"
        four.price = "150 tenge"
        var five = Canteen()
        five.name = "Kruassan"
        five.imageName = "kruassan"
        five.price = "150 tenge"
        var six = Canteen()
        six.name = "Shekerpare"
        six.imageName = "sheker"
        six.price = "150 tenge"
        
        arr.append(first)
        arr.append(second)
        arr.append(third)
        arr.append(four)
        arr.append(five)
        arr.append(six)
        
        return arr
    }()


    override func viewDidLoad() {
        super.viewDidLoad()
        
        collectionView.dataSource = self
        collectionView.delegate = self

        // Do any additional setup after loading the view.
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 6
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "CanteenCollectionViewCell", for: indexPath) as! CanteenCollectionViewCell
        
        if segmentedController.selectedSegmentIndex == 0 {
            cell.canteen = itemsDrinkArray[indexPath.row]
        }
        if segmentedController.selectedSegmentIndex == 1 {
            cell.canteen = itemsSweetArray[indexPath.row]
        }
        if segmentedController.selectedSegmentIndex == 2 {
            cell.canteen = itemsFastArray[indexPath.row]
        }
        if segmentedController.selectedSegmentIndex == 3 {
            cell.canteen = itemsBakeryArray[indexPath.row]
        }
        
        
        
        return cell
    }
    
    
    @IBAction func segmentAction(_ sender: Any) {
        collectionView.reloadData()
    }
    

}
