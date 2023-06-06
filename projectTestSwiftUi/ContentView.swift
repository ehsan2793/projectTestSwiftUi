//
//  ContentView.swift
//  projectTestSwiftUi
//
//  Created by Ehsan Rahimi on 6/5/23.
//

import SwiftUI

struct ContentView: View {
    // MARK: - PROPERTIES

    // MARK: - BODY

    var body: some View {
        VStack(alignment: .leading) {
            Text("Turtle Roc")
                .font(.title)

            HStack {
                Text("Joshua Tree National Park”")
                    .font(.subheadline)
                Spacer()
                Text("California")
                    .font(.subheadline)
            }
        }
        .padding()
    }
}

// MARK: - PREVIEW

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
