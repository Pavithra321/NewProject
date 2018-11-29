//
//  ViewController.swift
//  NewProject
//
//  Created by pavithra on 11/18/18.
//  Copyright © 2018 pavithra. All rights reserved.
//

import UIKit
import MKSpinner
import SwiftHEXColors
import SVProgressHUD
class ViewController: UIViewController {
    
    @IBOutlet weak var hexaColorLabel: UILabel!
    
    @IBAction func showActionIndicator(_ sender: Any) {
       
      MKNSpinner.show("Connecting Satellite.....")
        
   }
    
    @IBAction func showDismissIndicator(_ sender: Any) {
        
        MKNSpinner.hide()
    }
    
    
    @IBAction func showProgressAction(_ sender: Any) {
        //[SVProgressHUD(), show] as [Any];
        SVProgressHUD.show()
    }
    
    @IBAction func shoeDismissProgress(_ sender: Any) {
        //[SVProgressHUD(), dismiss] as [Any];
        SVProgressHUD.dismiss()
    }
    
    
    

    @IBOutlet weak var inputTextField: UITextField!
    @IBOutlet weak var inputLabel: UILabel!
    
    @IBAction func updateButtonClicked(_ sender: Any) {
        self.inputLabel.text = inputTextField.text
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        //UIColor(hexString: "#ff8942")
        self.hexaColorLabel.text = "hexaColorLabel"
        hexaColorLabel.textColor = UIColor(hexString: "#ff8942")
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

