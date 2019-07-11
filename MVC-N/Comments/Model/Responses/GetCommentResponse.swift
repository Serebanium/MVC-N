//
//  GetCommentResponse.swift
//  MVC-N
//
//  Created by Сергей Иванов on 11/07/2019.
//  Copyright © 2019 topMob. All rights reserved.
//

import Foundation

struct GetCommentResponce {
    typealias JSON = [String: AnyObject]
    let comments: [Comment]
    
    init(json: Any) throws {
        guard let array = json as? [JSON] else { throw NetworkError.failInternetError}
        var comments = [Comment]()
        for dictionary in array {
            guard let comment = Comment(dict: dictionary) else { continue }
            comments.append(comment)
        }
        self.comments = comments
    }
}
