//
//  MenuVC.swift
//  FreshmanApplication
//
//  Created by rau4o on 11/11/18.
//  Copyright © 2018 rau4o. All rights reserved.
//

import UIKit

class MenuVC: UIViewController,UICollectionViewDataSource,UICollectionViewDelegate, UICollectionViewDelegateFlowLayout{

    
    let reuseIdentifier = "collectionViewCellId"
    
    var itemMenuArray: [MenuModel] = {
        var arr:[MenuModel] = []
        
        var first = MenuModel()
        first.name = "About the Suleyman Demirel University"
        first.imageName = "About"
        var second = MenuModel()
        second.name = "Suleyman Demirel University Staff"
        second.imageName = "teacher"
        var third = MenuModel()
        third.name = "Map"
        third.imageName = "map"
        var four = MenuModel()
        four.name = "Canteen"
        four.imageName = "Menu"
        var five = MenuModel()
        five.name = "How to reach to SDU"
        five.imageName = "shuttle"
        var six = MenuModel()
        six.name = "Timetable"
        six.imageName = "Timetable"
        var seven = MenuModel()
        seven.name = "Our Social Clubs"
        seven.imageName = "MainArt"
        
        arr.append(first)
        arr.append(second)
        arr.append(third)
        arr.append(four)
        arr.append(five)
        arr.append(six)
        arr.append(seven)
        return arr
    }()
    var arrayImage = [UIImage(named: "About"),
                      UIImage(named: "teacher"),
                      UIImage(named: "map"),
                      UIImage(named: "Menu"),
                      UIImage(named: "shuttle"),
                      UIImage(named: "Timetable"),
                      UIImage(named: "MainArt")
    ]
    
    @IBOutlet weak var collectionView: UICollectionView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.collectionView.delegate = self
        self.collectionView.dataSource = self
//        if let flowLayout
        
    }
    
    func callVC(index: Int) {
        if index == 0 {
            let vc = self.storyboard?.instantiateViewController(withIdentifier: "AboutSduVC") as? AboutSduVC
            self.navigationController?.pushViewController(vc!, animated: true)
        }
        if index == 1 {
            let vc = self.storyboard?.instantiateViewController(withIdentifier: "MainTeachersVC") as? MainTeachersVC
                self.navigationController?.pushViewController(vc!, animated: true)
        }
        if index == 2 {
            let vc = self.storyboard?.instantiateViewController(withIdentifier: "MapVC") as? MapVC
            
            self.navigationController?.pushViewController(vc!, animated: true)
        }
        if index == 3 {
            let vc = self.storyboard?.instantiateViewController(withIdentifier: "CanteenViewController") as? CanteenViewController

            self.navigationController?.pushViewController(vc!, animated: true)
        }
        if index == 4 {
            let vc = self.storyboard?.instantiateViewController(withIdentifier: "ShuttleVC") as? ShuttleVC
            
            self.navigationController?.pushViewController(vc!, animated: true)
        }
        if index == 5 {
            let vc = self.storyboard?.instantiateViewController(withIdentifier: "ScheduleViewController") as? ScheduleViewController
            self.navigationController?.pushViewController(vc!, animated: true)
        }
        if index == 6 {
            let vc = self.storyboard?.instantiateViewController(withIdentifier: "ArtVC") as? ArtVC
            self.navigationController?.pushViewController(vc!, animated: true)
        }
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 7
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: reuseIdentifier, for: indexPath) as! CollectionViewCell
//        cell.backgroundColor = #colorLiteral(red: 0, green: 0.4784313725, blue: 1, alpha: 1)
        
        cell.menu = itemMenuArray[indexPath.row]
        
        return cell
    }
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        callVC(index: indexPath.row)
        
        
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return 0
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumInteritemSpacingForSectionAt section: Int) -> CGFloat {
        return 0
    }

    

}
