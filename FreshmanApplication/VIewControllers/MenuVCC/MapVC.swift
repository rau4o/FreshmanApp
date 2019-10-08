//
//  MapVC.swift
//  FreshmanApplication
//
//  Created by rau4o on 11/11/18.
//  Copyright © 2018 rau4o. All rights reserved.
//

import UIKit

class MapVC: UIViewController {
    
    
    @IBOutlet weak var imageView: UIImageView!
    
    @IBOutlet weak var segment: UISegmentedControl!
    
    @IBOutlet weak var label: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        label.text = "1-st floor Evacuation plan "

        // Do any additional setup after loading the view.
    }
    
    
    @IBAction func segmentAction(_ sender: Any) {
        if segment.selectedSegmentIndex == 0 {
            imageView.image = UIImage(named: "maap1")
            label.text = "1-st floor Evacuation plan "
        }
        else {
            imageView.image = UIImage(named: "maap2")
            label.text = "2-nd floor Evacuation plan"
        }
    }
    
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
