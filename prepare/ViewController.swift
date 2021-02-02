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
    @IBOutlet weak var faceLabel2: UILabel!
    
    // フォーム
    @IBOutlet weak var form: UITextField!
    @IBOutlet weak var form2: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // 消しとく
        faceLabel.isHidden = true
        faceLabel2.isHidden = true
        
        form.delegate = self
        form2.delegate = self
    }

    // フォームの入力可否
    func textFieldShouldBeginEditing(_ textField: UITextField) -> Bool {
        true
    }
    
    // 入力状態になったらlabelを出す
    func textFieldDidBeginEditing(_ textField: UITextField) {
        
        switch textField.tag {
        case 0:
            faceLabel.isHidden = false
        case 1:
            faceLabel2.isHidden = false
        default:
            break
        }
    }
}

