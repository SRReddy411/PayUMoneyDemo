//
//  ViewController.swift
//  PayuMoneyDemo
//
//  Created by volive solutions on 22/08/18.
//  Copyright © 2018 volive solutions. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBAction func payMoneyBtnAction(_ sender: Any) {
        
        PayUServiceHelper.sharedManager().getPayment(self, "ramireddygangireddy1@gmail.com", "9966820019", "RamiReddy", "50.00", "45678934EDFTY67TXXX56", didComplete: { (dict, error) in
            if error != nil {
                print("Error")
            }else {
                print("Sucess")
            }
        }) { (error) in
            print("Payment Process Breaked")
        }
        
        
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

