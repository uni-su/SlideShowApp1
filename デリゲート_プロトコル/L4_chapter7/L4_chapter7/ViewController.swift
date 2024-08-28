//
//  ViewController.swift
//  L4_chapter7
//
//  Created by Yoshihiro Maruyama on 2024/08/20.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

    @IBOutlet weak var tableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        tableView.fillerRowHeight = UITableView.automaticDimension
        
        tableView.dataSource = self
        tableView.delegate = self
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
            return 40 // 40個のデータがあるという意味
        }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {

            // 再利用キューからセルを取得する
            let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath)

            // セルに表示する文字を設定する
            var content = cell.defaultContentConfiguration()
            content.text = "Row \(indexPath.row)"
            cell.contentConfiguration = content

            return cell
        }


}

