//
//  CustomTextFieldView.swift
//  SY-Global Taks
//
//  Created by Owais on 9/16/25.
//

import SwiftUI

struct CustomTextFieldView: View {
    var title: String
    var placeholder: String
    @Binding var text: String
    var isSecure: Bool = false

    var body: some View {
        VStack(spacing: 8) {
            HStack {
                Text(title)
                    .font(.system(size: 14, weight: .medium, design: .default))
                    .foregroundStyle(.secondary)
                
                Spacer()
            }
            
            VStack {
                if isSecure {
                    SecureField(placeholder, text: $text)
                        .multilineTextAlignment(.leading)
                        .frame(height: 44)
                        .padding(.horizontal, 12)
                        .cornerRadius(12)
                } else {
                    TextField(placeholder, text: $text)
                        .multilineTextAlignment(.leading)
                        .frame(height: 44)
                        .padding(.horizontal, 12)
                        .cornerRadius(12)
                }
            }
            .frame(maxWidth: .infinity, maxHeight: 44)
            .background(Color.white)
            .cornerRadius(12)
        }
    }
}

#Preview {
    CustomTextFieldView(title: "Demo", placeholder: "Placeholder", text: .constant(""))
}
