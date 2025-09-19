//
//  CustomButtonView.swift
//  SY-Global Taks
//
//  Created by Owais on 9/16/25.
//

import SwiftUI

struct CustomButtonView: View {
    var action: () -> Void
    var title: String
    var imageName: String
    var bgColor: Color = Color.red
    var textColor: Color = .white
    
    var body: some View {
        VStack(spacing: 0) {
            Button(action: action) {
                HStack(spacing: 10) {
                    ZStack {
                        HStack {
                            Image(imageName)
                                .resizable()
                                .frame(width: 24, height: 24)
                            Spacer()
                        }
                        .padding(.leading)
                        Text(title)
                            .font(.system(size: 14, weight: .regular, design: .default))
                            .foregroundStyle(.black)
                    }
                }
                .frame(maxWidth: .infinity)
                .frame(height: 42)
                .background(.white)
                .cornerRadius(14)
                .overlay(
                    RoundedRectangle(cornerRadius: 14)
                        .stroke(Color.black.opacity(0.4), lineWidth: 0.4)
                )
            }
        }
    }

}

#Preview {
    CustomButtonView(action: {
        //
    }, title: "demo", imageName: "google")
}

