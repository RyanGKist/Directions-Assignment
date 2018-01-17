//
//  MainVC.swift
//  North East South West
//
//  Created by Ryan Kistner on 1/16/18.
//  Copyright © 2018 Ryan Kistner. All rights reserved.
//

import UIKit

class MainVC: UIViewController {

    @IBAction func unwindToVC1(segue:UIStoryboardSegue) { }
    
    var titleHolder : String?
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func directionsButtonPressed(_ sender: UIButton) {
        if let title = sender.titleLabel?.text{
            titleHolder = title
            performSegue(withIdentifier: "show", sender: self)
        }
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if (segue.identifier == "show"){
            let directionsVC = segue.destination as! DirectionVC
            directionsVC.buttonTitleHolder = titleHolder
        }
    }
    
}

