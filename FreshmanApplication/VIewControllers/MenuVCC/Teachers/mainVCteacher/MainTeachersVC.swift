//
//  MainTeachersVC.swift
//  FreshmanApplication
//
//  Created by rau4o on 12/4/18.
//  Copyright © 2018 rau4o. All rights reserved.
//

import UIKit

class MainTeachersVC: UIViewController,UICollectionViewDataSource,UICollectionViewDelegate {
    
    
    
    var itemsHumanArray: [MainTeacher] = {
        var arr: [MainTeacher] = []
        var first = MainTeacher()
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
        var second = MainTeacher()
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
        var third = MainTeacher()
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
        var four = MainTeacher()
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
        var five = MainTeacher()
        five.name = "Ardakty Ishankulova"
        five.imageName = "ardakty"
        five.text = """
        Degree:Bachelor
        Position:Chief expert
        Birth date:04 Jun 1973
        Gender:Woman
        Country:Kazakhstan
        Phone:307 95 60 (121)
        Email:ardakty.ishankulova@sdu.edu.kz
        """
        
        var six = MainTeacher()
        six.name = "Kuralay Berkuzhinova"
        six.imageName = "shynar"
        six.text = """
        Degree:Bachelor
        Position:Expert
        Birth date:07 Apr 1994
        Gender:Woman
        Marital status:Not married
        Country:Kazakhstan
        Email:kuralay.berkuzhinova@sdu.edu.kz
        """
        
        arr.append(first)
        arr.append(second)
        arr.append(third)
        arr.append(four)
        arr.append(five)
        arr.append(six)
        
        
        
        return arr
    }()
    
    var itemLawArray : [MainTeacher] = {
        var arr: [MainTeacher] = []
            var first = MainTeacher()
            first.name = "Marat Akhmadi"
            first.imageName = "marat"
            first.text = """
            Degree:PhD\nPosition:Dean \nBirth date:21 Jun 1976
            Gender:Man
            Marital status:Married
            Country:Kazakhstan
            Email:marat.akhmadi@sdu.edu.kz
            """
            var second = MainTeacher()
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
            
            var third = MainTeacher()
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
            var four = MainTeacher()
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
        
            var five = MainTeacher()
            five.name = "Dinara Tlezhanova"
            five.imageName = "dinara"
            five.text = """
            Degree:Bachelor
            Position:Secretary
            Birth date:24 Apr 1994
            Gender:Woman
            Country:Kazakhstan
            Email:dinara.tlezhanova@sdu.edu.kz
            """
        
            var six = MainTeacher()
            six.name = "Amanzhol Akayev"
            six.imageName = "aman"
            six.text = """
            Degree:Doctor of Science
            Position:Associate Professor
            Birth date:15 May 1944
            Gender:Man
            Country:Kazakhstan
            Email:amanzhol.akayev@sdu.edu.kz
            """
        
            arr.append(first)
            arr.append(second)
            arr.append(third)
            arr.append(four)
            arr.append(five)
            arr.append(six)
        return arr
    }()
    
    var itemsEngArray: [MainTeacher] = {
        var arr: [MainTeacher] = []
        
            var f = MainTeacher()
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
            var s = MainTeacher()
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
            var t = MainTeacher()
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
            var four = MainTeacher()
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
            var five = MainTeacher()
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
            var six = MainTeacher()
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
        
            return arr
    }()
    
    var itemsBusinessArray: [MainTeacher] = {
        var arr:[MainTeacher] = []
        var first = MainTeacher()
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
        var second = MainTeacher()
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
        var third = MainTeacher()
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
        var four = MainTeacher()
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
        
        var five = MainTeacher()
        five.name = "Laura Bukharbayeva"
        five.imageName = "laura"
        five.text = """
        Degree:Master
        Position:Senior Lecturer
        Birth date:10 Jun 1986
        Gender:Woman
        Country:Kazakhstan
        Email:laura.bukharbayeva@sdu.edu.kz
        """
        
        var six = MainTeacher()
        six.name = "Mehmet Kocaaga"
        six.imageName = "mehmet"
        six.text = """
        Degree:Master
        Position:Social Affairs Coordinator
        Birth date:06 Apr 1968
        Gender:Man
        Country:Turkey
        Phone:307 95 60 (130)
        Email:mehmet.kocaaga@sdu.edu.kz
        """
        
        arr.append(first)
        arr.append(second)
        arr.append(third)
        arr.append(four)
        arr.append(five)
        arr.append(six)
        return arr
    }()
    
    
    
    @IBOutlet weak var segmentedController: UISegmentedControl!
    
    @IBOutlet weak var collectionView: UICollectionView!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        collectionView.dataSource = self
        collectionView.delegate = self

        // Do any additional setup after loading the view.
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "show" {
            if let vc = segue.destination as?DetailMainTeacherVC {
                let main = sender as? MainTeacher
                vc.teacher = main
            }
        }
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 6
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "TeachersCollectionViewCell", for: indexPath) as! TeachersCollectionViewCell
        if segmentedController.selectedSegmentIndex == 0 {
            cell.teacher = itemsHumanArray[indexPath.row]
            return cell
        }
        else if segmentedController.selectedSegmentIndex == 1 {
            cell.teacher = itemLawArray[indexPath.row]
            return cell
            
        }
        else if segmentedController.selectedSegmentIndex == 2 {
            cell.teacher = itemsEngArray[indexPath.row]
            return cell
        }
        
        else if segmentedController.selectedSegmentIndex == 3 {
            cell.teacher = itemsBusinessArray[indexPath.row]
            return cell
        }
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        if segmentedController.selectedSegmentIndex == 0 {
            let b = itemsHumanArray[indexPath.row]
            performSegue(withIdentifier: "show", sender: b)
            
        }
        else if segmentedController.selectedSegmentIndex == 1 {
            let b = itemLawArray[indexPath.row]
            performSegue(withIdentifier: "show", sender: b)
        }
        else if segmentedController.selectedSegmentIndex == 2 {
            let b = itemsEngArray[indexPath.row]
            performSegue(withIdentifier: "show", sender: b)
        }
        else if segmentedController.selectedSegmentIndex == 3 {
            let b = itemsBusinessArray[indexPath.row]
            performSegue(withIdentifier: "show", sender: b)
        }
    }

    @IBAction func changeCells(_ sender: Any) {
        collectionView.reloadData()
    }
    
    
    

}
