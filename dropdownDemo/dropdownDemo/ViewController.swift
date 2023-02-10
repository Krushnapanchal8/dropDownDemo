//
//  ViewController.swift
//  dropdownDemo
//
//  Created by Mac on 09/02/23.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var cities: [UIButton]!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        cities.forEach { (Button) in
            Button.isHidden = true
        }
    }

    @IBAction func selectCityClick(_ sender: UIButton) {
        cities.forEach { (button) in
            UIView.animate(withDuration: 0.3, animations: {
                button.isHidden = !button.isHidden
                self.view.layoutIfNeeded()
            }, completion: nil)
        }
    }
    
    @IBAction func city1Click(_ sender: UIButton) {
    }
    
    @IBAction func city2Click(_ sender: UIButton) {
    }
    
    
}

