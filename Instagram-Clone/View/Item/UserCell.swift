//
//  UserCell.swift
//  Instagram-Clone
//
//  Created by Smart on 2/11/2564 BE.
//

import SwiftUI
import Kingfisher

struct UserCell: View {
    let user: User
    
    var body: some View {
        HStack {
            if let imageURL = user.profileImageURL {
                KFImage(URL(string: imageURL))
                    .resizeTo(width: 48, height: 48)
                    .clipShape(Circle())
            } else {
                Image(systemName: "person.crop.circlr.fill")
                    .resizeTo(width: 48, height: 48)
                    .clipShape(Circle())
            }
            
            VStack {
                Text(user.username)
                    .font(.system(size: 14, weight: .semibold))
                
                Text(user.fullname)
                    .font(.system(size: 14))
            }
            Spacer()
        }
    }
}

//struct UserCell_Previews: PreviewProvider {
//    static var previews: some View {
//        UserCell()
//    }
//}
