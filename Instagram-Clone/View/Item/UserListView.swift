//
//  UserListView.swift
//  Instagram-Clone
//
//  Created by Smart on 2/11/2564 BE.
//

import SwiftUI

struct UserListView: View {
    @ObservedObject var viewModel: SearchViewModel
    @Binding var searchText: String
    
    var users: [User] {
        searchText.isEmpty ? viewModel.users : viewModel.filterUsers(withText: searchText)
    }
    
    var body: some View {
        ScrollView {
            LazyVStack {
                ForEach(users) { user in
                    NavigationLink(destination: ProfileView(user: user)) {
                        UserCell(user: user)
                            .padding(.leading, 8)
                        
                    }
                }
            }
        }
    }
}

//struct UserListView_Previews: PreviewProvider {
//    static var previews: some View {
//        UserListView()
//    }
//}
