//
//  HomeViewController.swift
//  SampleApp
//
//  Created by Kiran Thomas on 19/12/18.
//  Copyright © 2018 HomeBase. All rights reserved.
//

import UIKit

class HomeViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    @IBOutlet weak var featuredView: UIView?
    @IBOutlet weak var listTableView: UITableView?
    @IBOutlet weak var listItemButton: UIBarButtonItem?
    @IBOutlet weak var gridItemButton: UIBarButtonItem?
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 3
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell(style: .default, reuseIdentifier: "someThing")
        
        return cell
    }
}

