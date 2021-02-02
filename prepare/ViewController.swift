//
//  ViewController.swift
//  prepare
//
//  Created by Takuya Ando on 2021/02/02.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {

    // ラベル
    @IBOutlet weak var faceLabel: UILabel!
    // フォーム
    @IBOutlet weak var form: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        form.delegate = self
    }

    // フォームの入力可否
    func textFieldShouldBeginEditing(_ textField: UITextField) -> Bool {
        true
    }
    
    
}

