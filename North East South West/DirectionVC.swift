//
//  DirectionVC.swift
//  North East South West
//
//  Created by Ryan Kistner on 1/16/18.
//  Copyright © 2018 Ryan Kistner. All rights reserved.
//

import UIKit

class DirectionVC: UIViewController {
    
    @IBOutlet weak var buttonTitle: UIButton!
    var buttonTitleHolder : String?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        buttonTitle.setTitle(buttonTitleHolder, for: .normal)
        print("Title on the Directions VC \(buttonTitleHolder)")
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    @IBAction func directionButtonPressed(_ sender: UIButton) {
        performSegue(withIdentifier: "unwind", sender: self)
    }
    
}
