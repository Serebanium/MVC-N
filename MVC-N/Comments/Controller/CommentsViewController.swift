//
//  ViewController.swift
//  MVC-N
//
//  Created by Сергей Иванов on 08/07/2019.
//  Copyright © 2019 topMob. All rights reserved.
//

import UIKit

class CommentsViewController: UIViewController {
    @IBOutlet weak var tableView: UITableView!
}

extension CommentsViewController: UITableViewDelegate {}

extension CommentsViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        <#code#>
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
      
    }
}
