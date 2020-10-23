//
//  ViewController.swift
//  Assignment3
//
//  Created by 丸山翔太郎 on 2020/10/22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var leftField: UITextField!
    @IBOutlet weak var rightField: UITextField!

    @IBOutlet weak var leftLabel: UILabel!
    @IBOutlet weak var rightLabel: UILabel!

    @IBOutlet weak var resultLabel: UILabel!

    @IBOutlet weak var leftSwitch: UISwitch!
    @IBOutlet weak var rightSwitch: UISwitch!

    var leftNum:Double{
        get{
//            if(leftSwitch.isOn){
//                return -(Double(leftField.text ?? "0.0") ?? 0.0)
//            }
//            return Double(leftField.text ?? "0.0") ?? 0.0

            let originalNum = Double(leftField.text ?? "0.0") ?? 0.0
            return leftSwitch.isOn ? -originalNum : originalNum
        }
    }

    var rightNum:Double{
        get{
//            if(rightSwitch.isOn){
//                return -(Double(rightField.text ?? "0.0") ?? 0.0)
//            }
//            return Double(rightField.text ?? "0.0") ?? 0.0
            let originalNum = Double(rightField.text ?? "0.0") ?? 0.0
            return rightSwitch.isOn ? -originalNum : originalNum
        }
    }

    // 不要なので消しましょう
//    override func viewDidLoad() {
//        super.viewDidLoad()
//        // Do any additional setup after loading the view.
//    }

    @IBAction func tapSumButton(_ sender: Any) {
        // 以下は既にComputed Propertyがあるので要らないような？
//        let rightNum:Double = {
//            if(rightSwitch.isOn){
//                return -(Double(rightField.text ?? "0.0") ?? 0.0)
//            }
//            return Double(rightField.text ?? "0.0") ?? 0.0
//        }()
//        let leftNum:Double = {
//            if(leftSwitch.isOn){
//                return -(Double(leftField.text ?? "0.0") ?? 0.0)
//            }
//            return Double(leftField.text ?? "0.0") ?? 0.0
//        }()

        resultLabel.text = String(rightNum + leftNum)
    }
    @IBAction func switchRight(_ sender: UISwitch) {
//        rightLabel.text = String(rightNum)
        updateUI()
    }

    @IBAction func switchLeft(_ sender: UISwitch) {
//        leftLabel.text = String(leftNum)
        updateUI()
    }

    @IBAction func leftHasChanged(_ sender: UITextField) {
//        leftLabel.text = String(leftNum)
        updateUI()
    }

    @IBAction func rightHasChanged(_ sender: UITextField) {
//        rightLabel.text = String(rightNum)
        updateUI()
    }

    private func updateUI() {
        leftLabel.text = String(leftNum)
        rightLabel.text = String(rightNum)
    }
}
