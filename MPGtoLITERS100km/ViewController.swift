//
//  ViewController.swift
//  MPGtoLITERS100km
//
//  Created by Denis Salanta on 09/10/14.
//  Copyright (c) 2014 Denis Salanta. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var mpgField : UITextField!
    @IBOutlet var transformButton : UIButton!
    @IBOutlet var mpgLabel : UILabel!
    @IBOutlet var l100kmLabel : UILabel!
    @IBOutlet var l100kmField : UITextField!
    @IBOutlet var mpgTol100kmSwitch: UISwitch!

    var km100Lt = 0.425;
    var mpg = 2.352;
    //mpg = (km/lt) * 2.352
    //km/lt = mpg * 0.425
    var mpgToL100KMDirection: Bool = true;
    
    let mpgTransformDescription = "Transform MPG to L100KM";
    let l100kmTransformDescription = "Transform L100KM to MPG";
    
    @IBAction func transformTapped(sender : AnyObject) {
        if(mpgToL100KMDirection){
            var mpgValue = Double((mpgField.text as NSString).doubleValue);
            l100kmField.text = String(format: "%0.2f", mpgValue * km100Lt);
        }
        else{
            var l100kmValue = Double((l100kmField.text as NSString).doubleValue);
            mpgField.text = String(format: "%0.2f", l100kmValue * mpg);
        }
    }
    
    @IBAction func mpgTol100kmTapped(sender : AnyObject) {
        mpgToL100KMDirection = !mpgToL100KMDirection;
        transformButton.setTitle(mpgToL100KMDirection ? mpgTransformDescription : l100kmTransformDescription, forState: UIControlState.Normal);
        if(mpgToL100KMDirection){
            mpgField.becomeFirstResponder();
        } else {
            l100kmField.becomeFirstResponder();
        }
    }
    
    @IBAction func viewTapped(sender : AnyObject) {
        mpgField.resignFirstResponder();
        l100kmField.resignFirstResponder();
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

