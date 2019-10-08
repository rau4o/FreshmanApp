//
//  BusinessVC.swift
//  FreshmanApplication
//
//  Created by rau4o on 11/28/18.
//  Copyright © 2018 rau4o. All rights reserved.
//

import UIKit

class BusinessVC: UIViewController,UICollectionViewDataSource,UICollectionViewDelegate {
   
    
    
    @IBOutlet weak var collectionView: UICollectionView!
    
    
    var itemsBusinessArray: [Business] = {
        var arr:[Business] = []
        var first = Business()
        first.name = "Bolat Tatibekov"
        first.imageName = "bolat"
        first.text = """
        Degree:Doctor of Science
        Position:Member of Board
        Birth date:20 May 1951
        Gender:Man
        Mobile:+77013161441
        Country:Kazakhstan
        Phone:307 95 60 (526)
        Email:bolat.tatibekov@sdu.edu.kz
        """
        var second = Business()
        second.name = "Aigerim Azimbekova"
        second.imageName = "aigerim"
        second.text = """
        Degree:PhD
        Position:Chairman
        Birth date:03 Aug 1983
        Gender:Woman
        Country:Kazakhstan
        Email:aigerim.azimbekova@sdu.edu.kz
        """
        var third = Business()
        third.name = "Assylbek Nurgabdeshov"
        third.imageName = "assyl"
        third.text = """
        Degree:PhD
        Position:Associate Professor
        Birth date:21 May 1986
        Gender:Man
        Country:Kazakhstan
        Email:assylbek.nurgabdeshov@sdu.edu.kz
        """
        var four = Business()
        four.name = "Alibek Bissembayev"
        four.imageName = "alibek"
        four.text = """
        Degree:PhD
        Position:Assistant Professor
        Birth datw:03 Jan 1982
        Gender:Man
        Country:Kazakhstan
        Phone:307 95 60 (220)
        Email:alibek.bissembayev@sdu.edu.kz
        """
        
        arr.append(first)
        arr.append(second)
        arr.append(third)
        return arr
    }()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        collectionView.delegate = self
        collectionView.dataSource = self
    }
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "showB" {
            if let vc = segue.destination as? DetailBusiness {
                let business = sender as? Business
                vc.business = business
                
            }
         
        }
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 4
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "BID", for: indexPath) as! BusinessCollectionViewCell
        cell.business = itemsBusinessArray[indexPath.row]
        
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        let b = itemsBusinessArray[indexPath.row]
        performSegue(withIdentifier: "showB", sender: b)
    }
    
    


}
