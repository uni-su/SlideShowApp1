//
//  ViewController.swift
//  Lesson5chapter6
//
//  Created by Yoshihiro Maruyama on 2024/08/22.
//

import UIKit

class ViewController: UIViewController {
    
    var number: Int! = 5

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
   
        //数字を２倍してprintで出力する
        let twice = number * 2
        print(twice)
    }
}

