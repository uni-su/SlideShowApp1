//
//  ViewController.swift
//  SecondKadaiApp
//
//  Created by Yoshihiro Maruyama on 2024/08/21.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var textField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "toNext"{
            // segueから遷移先のResultViewControllerを取得する
            let resultViewController:ResultViewController = segue.destination as! ResultViewController
            resultViewController.str = textField.text!
            
        }
           
            // 遷移先のResultViewControllerで宣言しているnameに値を代入して渡す
       
        }
    
    @IBAction func unwind(_ segue: UIStoryboardSegue) {
        }


}

