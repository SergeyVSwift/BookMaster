//
//  ContentView.swift
//  BookMaster
//
//  Created by Sergey V on 15.03.25.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        HomeView()
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            .background(.BG)
    }
}

#Preview {
    ContentView()
}
