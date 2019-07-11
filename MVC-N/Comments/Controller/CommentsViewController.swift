//
//  ViewController.swift
//  MVC-N
//
//  Created by Сергей Иванов on 08/07/2019.
//  Copyright © 2019 topMob. All rights reserved.
//

import UIKit

class CommentsViewController: UIViewController {
    
    var comments = [Comment]()
    
    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        CommentNetworkSerwice.getComments { (response) in
            self.comments = response.comments
            self.tableView.reloadData()
        }
    }
}

extension CommentsViewController: UITableViewDelegate {}

extension CommentsViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return comments.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! CommentCell
        let comment = comments[indexPath.row]
        cell.configure(with: comment)
        return cell
    }
}
