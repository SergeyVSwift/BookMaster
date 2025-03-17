//
//  LeafTextField.swift
//  BookMaster
//
//  Created by Sergey V on 17.03.25.
//

import SwiftUI

struct LeafTextField: View {
    let  isSecure: Bool
    let title: String
    @Binding var text: String
    @State private var isSecureField: Bool
    
    init(isSecure: Bool, title: String, text: Binding<String>) {
        self.isSecure = isSecure
        self.title = title
        self._text = text
        self.isSecureField = isSecure
    }
    
    var body: some View {
        HStack {
            if isSecureField {
                SecureField(title, text: $text)
            } else {
                TextField(title, text: $text)
            }
            Spacer()
            if isSecure {
                Button(action: {
                    isSecureField.toggle()
                }) {
                    Image(systemName: isSecureField ? "eye.slash.fill" : "eye.fill")
                        .resizable()
                        .frame(width: 26.5, height: 17.5)
                }
                .tint(.blue)
            }
        }
        .padding(.horizontal, 25)
        .padding(.vertical, 21)
        .background {
            UnevenRoundedRectangle(cornerRadii: .init(topLeading: 18,
                                                      bottomLeading: 0,
                                                      bottomTrailing: 18,
                                                      topTrailing: 0))
            .fill(.white)
            .stroke(.lightGray2)
        }
    }
}

#Preview {
    LeafTextField(isSecure: true, title: "Введите пароль", text: .constant(""))
}
