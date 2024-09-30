//
//  ContentView.swift
//  PeekScrollView
//
//  Created by Mohammed Rokon Uddin on 9/30/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
      GeometryReader {
        let safeArea = $0.safeAreaInsets
        PeekScrollView(safeArea: safeArea)
          .ignoresSafeArea(.container, edges: .top)
      }
    }
}

#Preview {
    ContentView()
}


