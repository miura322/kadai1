//
//  ViewController.swift
//  kadai1
//
//  Created by 三浦桃哉 on 2021/10/08.
//

import UIKit

extension UITextField {
    var textToInt: Int {
        let text = self.text
        let int = text.flatMap {Int($0)} ?? 0
        return int
    }
}
class ViewController: UIViewController {

    @IBOutlet weak var textField1: UITextField!
    @IBOutlet weak var textField2: UITextField!
    @IBOutlet weak var textField3: UITextField!
    @IBOutlet weak var textField4: UITextField!
    @IBOutlet weak var label: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func calculate(_ sender: Any) {
        let num1 = textField1.textToInt
        let num2 = textField2.textToInt
        let num3 = textField3.textToInt
        let num4 = textField4.textToInt
        let calc = num1 + num2 + num3 + num4
        label.text = "\(calc)"
    }

}
