//
//  LeafButton.swift
//  BookMaster
//
//  Created by Sergey V on 17.03.25.
//

import SwiftUI

struct LeafButton: View {
    let title: String
    let action: () -> ()
    
    var body: some View {
        Button(title, action: action)
            .frame(maxWidth: .infinity, maxHeight: 57)
            .tint(.white)
            .font(.title3)
            .fontWeight(.light)
            .background {
                UnevenRoundedRectangle(cornerRadii: .init(topLeading: 18,
                                                          bottomLeading: 0,
                                                          bottomTrailing: 18,
                                                          topTrailing: 0))
                .fill(.blue)
            }
    }
}

#Preview {
    LeafButton(title: "Погнали", action: {})
}
