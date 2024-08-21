//
//  ViewController.swift
//  IBAction
//
//  Created by Yoshihiro Maruyama on 2024/08/19.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var label: UILabel!
    
    @IBAction func handle(_ sender: Any) {
        label.text = "Swift"
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

