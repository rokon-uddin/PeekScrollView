//
//  CardView.swift
//  PeekScrollView
//
//  Created by Mohammed Rokon Uddin on 9/30/24.
//


import SwiftUI

struct CardView: View {
  var body: some View {
    RoundedRectangle(cornerRadius: 16)
      .fill(Color.random.gradient)
      .frame(height: 72)
      .overlay(alignment: .leading) {
        HStack(spacing: 12) {
          Circle()
            .frame(width: 40, height: 40)

          VStack(alignment: .leading, spacing: 6) {
            RoundedRectangle(cornerRadius: 6)
              .frame(width: 100, height: 6)

            RoundedRectangle(cornerRadius: 6)
              .frame(width: 70, height: 6)
          }
        }
        .foregroundStyle(Color.random.opacity(0.25))
        .padding(16)
      }
  }
}

#Preview {
  CardView()
}
