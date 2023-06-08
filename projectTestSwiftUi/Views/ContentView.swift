//
//  ContentView.swift
//  projectTestSwiftUi
//
//  Created by Ehsan Rahimi on 6/5/23.
//

import SwiftUI

struct ContentView: View {
    // MARK: - PROPERTIES
    @State private var selection: Tab = .featured
    enum Tab {
          case featured
          case list
      }

    // MARK: - BODY

    var body: some View {
        TabView(selection: $selection) {
              CategoryHome()
                  .tag(Tab.featured)

              LandmarkList()
                  .tag(Tab.list)
          }
    }
}

// MARK: - PREVIEW

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .environmentObject(ModelData())
    }
}
