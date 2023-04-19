//
//  PostComments.swift
//  My CT Store
//
//  Created by Ayush Patel on 03/04/23.
//
import Foundation

struct PostComments: Decodable {
    let id: Double
    let postId: Double
    let name: String
    let email: String
    let body: String
    enum CodingKeys: String, CodingKey {
        case id, name, email, body
        case postId = "post_id"
    }
}
