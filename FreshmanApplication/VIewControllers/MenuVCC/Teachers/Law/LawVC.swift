//
//  LawVC.swift
//  FreshmanApplication
//
//  Created by rau4o on 11/25/18.
//  Copyright © 2018 rau4o. All rights reserved.
//

import UIKit

class LawVC: UIViewController,UICollectionViewDataSource,UICollectionViewDelegate {
   
    
    var itemLawArray : [LawTeacher] = {
        var arr: [LawTeacher] = []
        for i in 0...10 {
            var first = LawTeacher()
            first.name = "Marat Akhmadi"
            first.imageName = "marat"
            first.text = """
            Degree:PhD\nPosition:Dean \nBirth date:21 Jun 1976
            Gender:Man
            Marital status:Married
            Country:Kazakhstan
            Email:marat.akhmadi@sdu.edu.kz
            """
            var second = LawTeacher()
            second.name = "Kulyan Konarbayeva"
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
            
            var third = LawTeacher()
            third.name = "Rakhymzhan Yrysbay"
            third.imageName = "rakym"
            third.text = """
            Degree:Bachelor
            Position:Lawyer
            Birth date:13 Jun 1996
            Gender:Man
            Country:Kazakhstan
            Email:rakhymzhan.yrysbay@sdu.edu.kz
            """
            var four = LawTeacher()
            four.name = "Baktiyar Shakenov"
            four.imageName = "bak"
            four.text = """
            Degree:Bachelor
            Position:Board Secretary
            Birth date:19 Feb 1993
            Gender:Man
            Marital status:Married
            Country:Kazakhstan
            Phone:307 95 60 (309)
            Email:baktiyar.shakenov@sdu.edu.kz
            """
            arr.append(first)
            arr.append(second)
            arr.append(third)
            arr.append(four)
        }
        return arr
    }()
    
    @IBOutlet weak var collectioView: UICollectionView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        collectioView.delegate = self
        collectioView.dataSource = self
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "showLaw" {
            if let vc = segue.destination as? LawDetailVC {
                let law = sender as? LawTeacher
                vc.law = law
            }
        }
    }
    
    

    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 4
    }

    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "lawID", for: indexPath) as! LawCollectionViewCell
        cell.law = itemLawArray[indexPath.row]
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        let laww = itemLawArray[indexPath.row]
        
        performSegue(withIdentifier: "showLaw", sender: laww)
    }


 

}
