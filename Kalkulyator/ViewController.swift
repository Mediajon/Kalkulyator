//
//  ViewController.swift
//  Kalkulyator
//
//  Created by Sadik Saidov on 5/7/20.
//  Copyright © 2020 Sadik Saidov. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var raqam : Double = 0;
    var oldingiraqam : Double = 0;
    var raqambormi = false
    var operatsiya = 0;
    
    
    

    @IBOutlet weak var natija: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func sonlar(_ sender: UIButton)
    {
        if raqambormi == true
        {
            natija.text = String(sender.tag)
            raqam = Double(natija.text!)!
            raqambormi = false
        }else
        {
            natija.text = natija.text! + String (sender.tag)
            raqam = Double(natija.text!)!
        }
    }
    
    
    @IBAction func amallar(_ sender: UIButton)
    {
        if natija.text != "" && sender.tag != 11 && sender.tag != 16
        {
            oldingiraqam = Double(natija.text!)!
            
            if sender.tag == 12 // bolish
            {
                natija.text = "/"
            } else if sender.tag == 13 //kopaytirish
            {
                natija.text = "*"
            }else if sender.tag == 14 //kopaytirish
            {
                natija.text = "-"
            }else if sender.tag == 15 //kopaytirish
            {
                natija.text = "+"
            }
            
            operatsiya = sender.tag;
            raqambormi = true;
        }else if sender.tag == 16
        {
            if operatsiya == 12
            {
                natija.text = String(oldingiraqam / raqam);
            }else if operatsiya == 13
            {
                natija.text = String(oldingiraqam * raqam);
            }else if operatsiya == 14
            {
                natija.text = String(oldingiraqam - raqam);
            }else if operatsiya == 15
            {
                natija.text = String(oldingiraqam + raqam);
            }
        }else if sender.tag == 11
        {
            raqam = 0;
            oldingiraqam = 0;
            raqambormi = false;
            operatsiya = 0;
            natija.text = "";
        }
    }
    
}

