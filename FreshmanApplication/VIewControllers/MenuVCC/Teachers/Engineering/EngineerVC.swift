//
//  EngineerVC.swift
//  FreshmanApplication
//
//  Created by rau4o on 11/25/18.
//  Copyright © 2018 rau4o. All rights reserved.
//

import UIKit

class EngineerVC: UIViewController,UICollectionViewDelegate,UICollectionViewDataSource {
    
    
    var itemsEngArray: [Engineer] = {
        var arr: [Engineer] = []
        for i in 0...10 {
            var f = Engineer()
            f.name = "Larissa Bazarbayeva"
            f.imageName = "Bazarbayeva"
            f.text = """
            Degree:PhD
            Position:Assistant Professor
            Birth date:18 Feb 1953
            Gender:Woman
            Country:Kazakhstan
            Phone:307 95 60 (430)
            Email:larissa.bazarbayeva@sdu.edu.kz
            """
            var s = Engineer()
            s.name = "Assem Talasbek"
            s.imageName = "assem"
            s.text = """
            Degree:Master
            Position:Lecturer
            Birth date:12 Mar 1994
            Gender:Woman
            Marital status:Not married
            Country:Kazakhstan
            Email:assem.talasbek@sdu.edu.kz
            """
            var t = Engineer()
            t.name = "Aisultan Shoiynbek"
            t.imageName = "aisultan"
            t.text = """
            Degree:Master
            Position:Lecturer
            Birth date:06 Jun 1992
            Gender:Man
            Marital status:Married
            Country:Kazakhstan
            Email:aisultan.shoiynbek@sdu.edu.kz
            """
            var four = Engineer()
            four.name = "Diana Burissova"
            four.imageName = "diana"
            four.text = """
            Degree:Master
            Position:Lecturer
            Birth date:28 Aug 1990
            Gender:Woman
            Country:Kazakhstan
            Email:diana.burissova@sdu.edu.kz
            """
            var five = Engineer()
            five.name = "Meraryslan Meraliyev"
            five.imageName = "mera"
            five.text = """
            Degree:Master
            Position:Lecturer
            Birth date:14 Jun 1993
            Gender:Man
            Country:Kazakhstan
            Email:meraryslan.meraliyev@sdu.edu.kz
            """
            var six = Engineer()
            six.name = "Darmen Kariboz"
            six.imageName = "darmen"
            six.text = """
            Degree:Master
            Position:Lecturer
            Birth date:21 Sep 1992
            Gender:Man
            Marital status:Not married
            Country:Kazakhstan
            Email:darmen.kariboz@sdu.edu.kz
            """
            arr.append(f)
            arr.append(s)
            arr.append(t)
            arr.append(four)
            arr.append(five)
            arr.append(six)
        }
        return arr
    }()
    
    
    @IBOutlet weak var collectionView: UICollectionView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        collectionView.delegate = self
        collectionView.dataSource = self

        // Do any additional setup after loading the view.
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "showEng" {
            if let vc = segue.destination as? EngineerDetailVC {
                let eng = sender as? Engineer
                vc.eng = eng
            }
        }
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 6
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "engId", for: indexPath) as! EngineerCollectionViewCell
        cell.enginner = itemsEngArray[indexPath.row]
        return cell
        
    }
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        let eng = itemsEngArray[indexPath.row]
        
        performSegue(withIdentifier: "showEng", sender: eng)
    }
    
    
    


}
