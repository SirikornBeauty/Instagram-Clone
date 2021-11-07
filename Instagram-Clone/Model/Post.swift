//
//  Post.swift
//  Instagram-Clone
//
//  Created by Smart on 7/11/2564 BE.
//

import SwiftUI
import Firebase
import FirebaseStorageSwift
import FirebaseFirestoreSwift

struct Post: Decodable, Identifiable {
    @DocumentID var id: String?
    let caption: String
    let timestamp: Timestamp
    var likes: Int
    let imageURL: String
    let ownerUID: String
    var ownerImageURL: String?
    let ownerUsername: String
    
    var user: User?
    var didLike: Bool? = false
}
