//
//  ViewController.swift
//  SlideShowApp1
//
//  Created by Yoshihiro Maruyama on 2024/08/26.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var imageView: UIImageView!
    
    @IBOutlet weak var startButton: UIButton!
    
    @IBOutlet weak var toPrev: UIButton!
    
    @IBOutlet weak var toNext: UIButton!
    
    
    @IBAction func toPrev(_ sender: Any) {
        dispImageNo -= 1
        displayImage()
    }
    
    
    @IBAction func toNext(_ sender: Any) {
        dispImageNo += 1
        displayImage()
    }
        
    @IBAction func startButton(_ sender: Any) {
        if (timer == nil){
            self.timer = Timer.scheduledTimer(timeInterval: 1.0, target: self, selector: #selector(updateTimer(_:)), userInfo: nil, repeats: true)
            
            startButton.setTitle("停止", for: .normal)
            
            toPrev.isEnabled = false
            toNext.isEnabled = false
            
        }else{
            timer.invalidate()
            timer = nil
            startButton.setTitle("再生", for: .normal)
            
            toPrev.isEnabled = true
            toNext.isEnabled = true
            
        }
        
    }
    
    var dispImageNo = 0
    var timer_sec: Float = 0
    var timer: Timer!
    
    func displayImage(){
        let imageNameArray = ["image1", "image2", "image3", "image4"]
        
        if dispImageNo < 0 {
            dispImageNo = 3
        }
        
        if dispImageNo > 3 {
            dispImageNo = 0
        }
        
        let name = imageNameArray[dispImageNo]
        
        let image = UIImage(named: name)

        imageView.image = image
        
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let image = UIImage(named: "image1")

        imageView.image = image
        
        let tapGesture = UITapGestureRecognizer(target: self, action: #selector(imageTapped))
                imageView.isUserInteractionEnabled = true
                imageView.addGestureRecognizer(tapGesture)
        
    }
    
    @objc func updateTimer(_ timer: Timer) {
            self.timer_sec += 1.0
            dispImageNo += 1
            displayImage()
        }
    
    @objc func imageTapped() {
           // 画面遷移するメソッドを呼び出し
           navigateToNextScreen()
           
       }
    
    func navigateToNextScreen() {
            // ストーリーボードからViewControllerを取得
            let storyboard = UIStoryboard(name: "Main", bundle: nil)
            if let resultViewController = storyboard.instantiateViewController(withIdentifier: "ResultViewController") as? ResultViewController {
                
                resultViewController.selectedImage = imageView.image
                // 画面遷移を実行
                self.present(resultViewController, animated: true, completion: nil)
            }
        }
    
    @IBAction func unwind(_ segue: UIStoryboardSegue) {
      }
    
    override func didReceiveMemoryWarning() {
            super.didReceiveMemoryWarning()
            // Dispose of any resources that can be recreated.
        }

}

