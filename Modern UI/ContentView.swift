//
//  ContentView.swift
//  Modern UI
//
//  Created by Milan Djordjevic on 29/11/2023.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundStyle(Color.paint(.TitleLabelColor))
            Text("QWE abvgdjezdsflkdsjf f kladsfj dasjdkl asjdkl asd   0123456789")
                .font(StylingFacade().use(ofSize: 60))
                .foregroundStyle(Color.paint(.TitleLabelColor))
        }
        .padding()
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(Color.paint(.Main))
    }
}

#Preview {
    ContentView()
}
