//
//  ViewController.swift
//  AirportsPro
//
//  Created by Bryan Kuo on 2021/7/5.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var viewLabel: UILabel!
    @IBOutlet weak var editText: UITextField!
    @IBOutlet weak var warningLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
//    讓輸入的文字,顯示在AirPods Pro 上的Label 上(拉@IBAction 的時候,Event 要選Editing Change)
    @IBAction func inputText(_ sender: UITextField) {
        
        viewLabel.text = sender.text
        
//        超出字數提醒
        warningLabel.text = String(editText.text!.count)
        let count = Int(warningLabel.text!)
        print(count!)
        
        if count!>7 {
            warningLabel.isHidden = false
            warningLabel.text = "你的訊息長度超出可用空間"
        }
        
    }
    
//    收起鍵盤(拉@IBAction 的時候,Event 要選Did End On Exit)
    @IBAction func closeKeyboard(_ sender: Any) {
    }
    
//    按空白處收起鍵盤
    @IBAction func tabGesture(_ sender: UITapGestureRecognizer) {
        view.endEditing(true)
    }
    
}

