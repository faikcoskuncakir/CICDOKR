//
//  ViewController.swift
//  CICDOKR
//
//  Created by Cakir, Faik on 28.10.2023.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet private weak var resultLabel: UILabel!
    
    let math = Arithmetic()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        resultLabel.text = math.add(num1: 6, num2: 6).description
    }
    
}

