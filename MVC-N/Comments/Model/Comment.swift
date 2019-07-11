//
//  Comment.swift
//  MVC-N
//
//  Created by Сергей Иванов on 09/07/2019.
//  Copyright © 2019 topMob. All rights reserved.
//

import Foundation

struct Comment {
    
    var postId: Int
    var id: Int
    var name: String
    var email: String
    var body: String
    
    init?(dict: [String: AnyObject]) {
        guard
            let postId = dict["postId"] as? Int,
            let id = dict["id"] as? Int,
            let name = dict["name"] as? String,
            let email = dict["email"] as? String,
            let body = dict["body"] as? String
        else { return nil }
        
        self.postId = postId
        self.id = id
        self.name = name
        self.email = email
        self.body = body
    }
    
}
