//
//  CustomTextField.swift
//  Instagram-Clone
//
//  Created by Smart on 2/11/2564 BE.
//

import SwiftUI

struct CustomTextField: View {
    let placeholdher: Text
    @Binding var text: String
    let imageName: String
    
    var body: some View {
        ZStack(alignment: .leading) {
            if text.isEmpty {
                placeholdher
                    .foregroundColor(.black)
                    .padding(.leading, 52)
            }
            
            HStack {
                Image(systemName: imageName)
                    .resizable()
                    .scaledToFill()
                    .frame(width: 20, height: 20)
                    .foregroundColor(.black)
                
                TextField("", text: $text)
                    .padding(.leading, 8)
            }
            .padding(.leading)
        }
        .frame(width: 360, height: 50)
        .background(
            ZStack {
                Color(.init(white: 0.9, alpha: 0.7))
                    .cornerRadius(8)
                    .overlay(
                        RoundedRectangle(cornerRadius: 8)
                            .stroke(Color(.init(white: 0.7, alpha: 0.7)), lineWidth: 1)
                    )
            }
        )
    }
}
