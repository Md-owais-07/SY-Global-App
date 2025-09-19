//
//  CategoryTitleView.swift
//  SY-Global Taks
//
//  Created by Owais on 9/18/25.
//

import SwiftUI

struct CategoryTitleView: View {
    let title: String
    
    var body: some View {
        VStack(spacing: 18) {
            Button {
                //
            } label: {
                HStack {
                    Text(title)
                        .font(.system(size: 15, weight: .semibold))
                    
                    Image(systemName: "chevron.right")
                        .resizable()
                        .frame(width: 8, height: 12)
                        .fontWeight(.medium)
                }.foregroundStyle(.black)
            }
        }.frame(maxWidth: .infinity, alignment: .leading).padding(.horizontal, 20).padding(.bottom, 0)
    }
}

#Preview {
    CategoryTitleView(title: "Recently viewed homes")
}
