//
//  ViewController.swift
//  SVProgressHUDGraceAndDismissIssue
//
//  Created by zzk on 30/10/2017.
//  Copyright © 2017 zzk. All rights reserved.
//

import UIKit
import SVProgressHUD

class ViewController: UIViewController {

    @IBAction func test(_ sender: UIButton) {
        
        SVProgressHUD.setGraceTimeInterval(0.5)
        SVProgressHUD.show(withStatus: "This is a test")
        SVProgressHUD.dismiss(withDelay: 3)
    }

    @IBAction func testUsingGCD(_ sender: UIButton) {
    
        SVProgressHUD.setGraceTimeInterval(0.5)
        SVProgressHUD.show(withStatus: "This is a test")
        DispatchQueue.main.asyncAfter(deadline: .now() + 3) {
            SVProgressHUD.dismiss()
        }
    }
    
}

