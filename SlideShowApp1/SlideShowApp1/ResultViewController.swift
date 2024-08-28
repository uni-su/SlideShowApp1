//
//  ResultViewController.swift
//  SlideShowApp1
//
//  Created by Yoshihiro Maruyama on 2024/08/27.
//

import UIKit

class ResultViewController: UIViewController {
    
    
    @IBOutlet weak var imageBigView: UIImageView!
    @IBOutlet weak var backButton: UIButton!
    
    var selectedImage: UIImage?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        if let image = selectedImage {
                    imageBigView.image = image
                }
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
