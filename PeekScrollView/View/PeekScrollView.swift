//
//  PeekScrollView.swift
//  PeekScrollView
//
//  Created by Mohammed Rokon Uddin on 9/30/24.
//

import SwiftUI

struct PeekScrollView: View {
  var safeArea: EdgeInsets
  var body: some View {
    let maxHeight: CGFloat = 450.0

    ScrollView(.vertical) {
      VStack(spacing: 0) {
        HeaderView(safeArea: safeArea)

        VStack(spacing: 16) {
          ForEach(1...16, id: \.self) { _ in
            CardView()
          }
        }
        .padding(16)
      }
    }
    .scrollIndicators(.hidden)
    .scrollTargetBehavior(CustomScrollBehavior(maxHeight: maxHeight))
  }
}


#Preview {
  PeekScrollView(safeArea: .init())
}
