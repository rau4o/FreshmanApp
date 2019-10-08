//
//  HumanVC.swift
//  FreshmanApplication
//
//  Created by rau4o on 11/28/18.
//  Copyright © 2018 rau4o. All rights reserved.
//

import UIKit

class HumanVC: UIViewController,UICollectionViewDelegate,UICollectionViewDataSource {
   
    
    @IBOutlet weak var collectionView: UICollectionView!
    
    
    var itemsHumanArray: [Human] = {
        var arr: [Human] = []
        var first = Human()
        first.name = "Talgat Yechshzhanov"
        first.imageName = "talgat"
        first.text = """
        Degree:PhD
        Position:Dean
        Birth date:06 Dec 1980
        Gender:Man
        Country:Kazakhstan
        Email:talgat.yechshzhanov@sdu.edu.kz
        """
        var second = Human()
        second.name  = "Kulyan Konarbayeva"
        second.imageName = "kulyan"
        second.text = """
        Degree:Master
        Position:Chief expert
        Birth date:27 Aug 1988
        Gender:Woman
        Marital status:Married
        Country:Kazakhstan
        Phone:307 95 60 (550)
        Email:kulyan.konarbayeva@sdu.edu.kz
        """
        var third = Human()
        third.name = "Zhadyra Shaimerdenova"
        third.imageName = "zhadyra"
        third.text = """
        Degree:Master
        Position:Expert
        Birth date:01 Jan 1984
        Gender:Woman
        Marital statu:Married
        Country:Kazakhstan
        Phone:307 95 60 (209)
        Email:zhadyra.shaimerdenova@sdu.edu.kz
        """
        var four = Human()
        four.name = "Zhansaya Kassymbay"
        four.imageName = "zhan"
        four.text = """
        Degree:Bachelor
        Position:Secretary
        Birth date:08 Nov 1996
        Gender:Woman
        Marital status:Not married
        Country:Kazakhstan
        Email:zhansaya.kassymbay@sdu.edu.kz
        """
        arr.append(first)
        arr.append(second)
        arr.append(third)
        arr.append(four)
        
        return arr
    }()

    override func viewDidLoad() {
        super.viewDidLoad()

        collectionView.delegate = self
        collectionView.dataSource = self
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "showHuman" {
            if let vc = segue.destination as? DetailHumanVC {
                let human = sender as? Human
                vc.human = human
            }
        }
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 4
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "CellID", for: indexPath) as! HumanCollectionViewCell
        cell.human = itemsHumanArray[indexPath.row]
        
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        let h = itemsHumanArray[indexPath.row]
        performSegue(withIdentifier: "showHuman", sender: h)
    }
    
    



}
