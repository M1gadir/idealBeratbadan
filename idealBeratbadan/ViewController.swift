//
//  ViewController.swift
//  idealBeratbadan
//
//  Created by My Macbook on 21/11/18.
//  Copyright © 2018 TB. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var KG: UITextField!
    
    @IBOutlet weak var CM: UITextField!
    
    @IBOutlet weak var outnya: UILabel!
    
    @IBAction func Hasil(_ sender: Any) {
        let KaG = Double(KG.text!)
        let CaM = Double(CM.text!)
        let bagi = KaG! / (CaM! * CaM!)
        
        if bagi < 18.5 {
            outnya.text! = "anda kurus = \(bagi)"
        }else if bagi < 24.9 && bagi > 18.5 {
            outnya.text! = "anda normal = \(bagi)"
        }else if bagi > 25.0 && bagi < 29.9 {
            outnya.text! = "anda kelebihan berat badan \(bagi)"
        }else if bagi >= 30.0  {
            outnya.text! = "anda obesitas \(bagi)"
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

