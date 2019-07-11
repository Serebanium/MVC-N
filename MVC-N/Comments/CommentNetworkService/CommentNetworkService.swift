//
//  CommentNetworkService.swift
//  MVC-N
//
//  Created by Сергей Иванов on 11/07/2019.
//  Copyright © 2019 topMob. All rights reserved.
//

import Foundation

class CommentNetworkSerwice {
    
    private init() {}
    
    static func getComments(completion: @escaping(GetCommentResponce) -> () ) {
        guard let url = URL(string: "https://jsonplaceholder.typicode.com/posts/1/comments") else { return }
        
        NetworkService.shared.getData(url: url) { (json) in
            do {
                let response = try GetCommentResponce(json: json)
                completion(response)
            } catch {
                print(error)
            }
        }
    }
}
