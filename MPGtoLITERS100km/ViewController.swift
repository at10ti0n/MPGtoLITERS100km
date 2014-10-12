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

    var mpg = 235.214;

    var mpgToL100KMDirection: Bool = true;
    
    let mpgTransformDescription = "Transform MPG to L100KM";
    let l100kmTransformDescription = "Transform L100KM to MPG";
    
    @IBAction func transformTapped(sender : AnyObject) {
        if(mpgToL100KMDirection) {
            var mpgValue = Double((mpgField.text as NSString).doubleValue);
            l100kmField.text = String(format: "%0.2f", mpg/mpgValue );
        }
        else {
            var l100kmValue = Double((l100kmField.text as NSString).doubleValue);
            mpgField.text = String(format: "%0.2f", mpg/l100kmValue);
        }
    }
    
    @IBAction func viewTapped(sender : AnyObject) {
        mpgField.resignFirstResponder();
        l100kmField.resignFirstResponder();
    }
    
    @IBAction func onMpgChanged(sender : AnyObject){
        var mpgValue = Double((mpgField.text as NSString).doubleValue);
        l100kmField.text = mpgValue==0 ? "" : String(format: "%0.2f", mpg/mpgValue );
    }
    
    @IBAction func onKmChanged(sender : AnyObject){
        var l100kmValue = Double((l100kmField.text as NSString).doubleValue);
        mpgField.text = l100kmValue==0 ? "" : String(format: "%0.2f", mpg/l100kmValue);
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        
    }


}

