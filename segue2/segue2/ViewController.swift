//
//  ViewController.swift
//  segue2
//
//  Created by Yoshihiro Maruyama on 2024/08/21.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
            // segueから遷移先のResultViewControllerを取得する
            let resultViewController:ResultViewController = segue.destination as! ResultViewController
            // 遷移先のResultViewControllerで宣言しているx, yに値を代入して渡す
            resultViewController.x = 1
            resultViewController.y = 1
        }
    
    @IBAction func unwind(_ segue: UIStoryboardSegue) {
        }

}

