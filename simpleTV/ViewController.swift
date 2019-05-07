//
//  ViewController.swift
//  simpleTV
//
//  Created by D7703_29 on 2019. 5. 7..
//  Copyright © 2019년 D7703_29. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource {
    
    @IBOutlet weak var tableView: UITableView!
    
    var animals = ["cat","dog","pig","bird","whale"]
    var detail = ["고양이","강아지","돼지","새","고래"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        tableView.dataSource = self
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return animals.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "RE", for: indexPath)
        let row = indexPath.row
        cell.textLabel?.text = animals[row]
        cell.detailTextLabel?.text = detail[row]
        
        cell.imageView?.image = UIImage(named: animals[row])
        
        return cell
    }
}



