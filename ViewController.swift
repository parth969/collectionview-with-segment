//
//  ViewController.swift
//  subtitletableview
//
//  Created by Yogesh Patel on 26/12/19.
//  Copyright © 2019 yogesh patel. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UITableViewDelegate,UITableViewDataSource {
    
    let Title = ["Yogesh","Nikunj","priya","Kajal","Vijay","Tanvi","Dhruv"]
    let Subtitle = ["36","38","30","26","40","39","22"]
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return Title.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        cell.textLabel?.text = Title[indexPath.row]
        cell.detailTextLabel?.text = Subtitle[indexPath.row]
        
        return cell
    }
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

