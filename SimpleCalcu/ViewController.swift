//
//  ViewController.swift
//  SimpleCalcu
//
//  Created by Sasongko Adi on 04/07/20.
//  Copyright © 2020 Dicoding Indonesia. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var length: UITextField!
    @IBOutlet weak var width: UITextField!
    @IBOutlet weak var result: UILabel!
    @IBOutlet weak var calculate: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
    }
    @IBAction func calculateResult(_ sender: Any) {
        if let l = Double(length.text ?? "0" ), let w = Double(width.text ?? "0") {
            calculate.setTitle("Hapus", for: .normal)
            result.text = String(l * w)
        } else {
            result.text = "Hasil Tidak Valid"
        }
        
    }
    
    @IBAction func resetResult(_ sender: Any) {
        length.text = ""
        width.text = ""
        result.text = "Hasil"
        calculate.setTitle("Hitung", for: .normal)
    }
}

