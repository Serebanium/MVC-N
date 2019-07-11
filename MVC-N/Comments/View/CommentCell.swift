//
//  CommentCell.swift
//  MVC-N
//
//  Created by Сергей Иванов on 09/07/2019.
//  Copyright © 2019 topMob. All rights reserved.
//

import UIKit

class CommentCell: UITableViewCell {
    
    @IBOutlet weak var label: UILabel!
    @IBOutlet weak var textView: UITextView!
    
    func configure(with comment: Comment) {
        self.label.text = comment.name
        self.textView.text = comment.body
    }
}
