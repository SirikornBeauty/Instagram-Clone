//
//  FeedViewModel.swift
//  Instagram-Clone
//
//  Created by Smart on 7/11/2564 BE.
//

import SwiftUI
import Firebase
import FirebaseStorageSwift

class FeedViewModel: ObservableObject {
    @Published var posts = [Post]()
    
    init() {
        fetchPosts()
    }
    
    func fetchPosts() {
        Firestore.firestore().collection("posts").getDocuments { (snap, error) in
            if let error = error {
                print(error.localizedDescription)
                return
            }
            
            guard let documents = snap?.documents else { return }
            
            self.posts = documents.compactMap { try? $0.data(as: Post.self)}
        }
    }
}
