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
            if(leftSwitch.isOn){
                return -(Double(leftField.text ?? "0.0") ?? 0.0)
            }
            return Double(leftField.text ?? "0.0") ?? 0.0
        }
    }
    var rightNum:Double{
        get{
            if(rightSwitch.isOn){
                return -(Double(rightField.text ?? "0.0") ?? 0.0)
            }
            return Double(rightField.text ?? "0.0") ?? 0.0
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
    }

    @IBAction func tapSumButton(_ sender: Any) {
        let rightNum:Double = {
            if(rightSwitch.isOn){
                return -(Double(rightField.text ?? "0.0") ?? 0.0)
            }
            return Double(rightField.text ?? "0.0") ?? 0.0
        }()
        let leftNum:Double = {
            if(leftSwitch.isOn){
                return -(Double(leftField.text ?? "0.0") ?? 0.0)
            }
            return Double(leftField.text ?? "0.0") ?? 0.0
        }()
        resultLabel.text = String(rightNum + leftNum)
    }
    @IBAction func switchRight(_ sender: UISwitch) {
        rightLabel.text = String(rightNum)
    }
    @IBAction func switchLeft(_ sender: UISwitch) {
        leftLabel.text = String(leftNum)

    }
    
    @IBAction func leftHasChanged(_ sender: UITextField) {
        leftLabel.text = String(leftNum)
    }
    @IBAction func rightHasChanged(_ sender: UITextField) {
        rightLabel.text = String(rightNum)
    }
    
    
}

