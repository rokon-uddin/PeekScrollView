//
//  HeaderView.swift
//  PeekScrollView
//
//  Created by Mohammed Rokon Uddin on 9/30/24.
//

import SwiftUI

struct HeaderView: View {
  let peekHeight: CGFloat
  let headerHeight: CGFloat
  let safeArea: EdgeInsets
  let topPadding: CGFloat
  let bottomPadding: CGFloat
  let horizontalPadding: CGFloat

  init(
    peekHeight: CGFloat = 75,
    headerHeight: CGFloat = 320,
    safeArea: EdgeInsets,
    topPadding: CGFloat = 16,
    bottomPadding: CGFloat = 6.0,
    horizontalPadding: CGFloat = 16.0

  ) {
    self.peekHeight = peekHeight
    self.headerHeight = headerHeight
    self.safeArea = safeArea
    self.topPadding = topPadding
    self.bottomPadding = bottomPadding
    self.horizontalPadding = horizontalPadding
  }

  var body: some View {
    GeometryReader {
      let size = $0.size
      let minY = $0.frame(in: .scrollView(axis: .vertical)).minY
      let maxHeight = size.height - (peekHeight + safeArea.top + topPadding + bottomPadding)
      let progress = max(min((-minY / maxHeight), 1), 0)

      VStack(alignment: .leading, spacing: 0) {
        Text("Hello")
          .font(.system(size: 36 - (10 * progress)))
          .offset(y: -50 * progress)
          .frame(maxHeight: .infinity, alignment: .bottom)
          .overlay(alignment: .topLeading) {
            GeometryReader {
              let size = $0.size
              Text("World")
                .font(.system(size: 26 - (10 * progress)))
                .offset(x: (size.width + 6) * progress, y: progress * 3)
            }
          }
          .frame(maxWidth: .infinity, alignment: .leading)
          .overlay(alignment: .topTrailing) {
            HStack(spacing: 16) {
              Button("", systemImage: "chevron.left") { }
              .contentShape(.rect)

              Button("", systemImage: "chevron.right") { }
              .contentShape(.rect)
            }
            .font(.title3)
            .foregroundStyle(.primary)
            .offset(x: 150 * progress)
          }
          .frame(height: peekHeight)
          .clipped()

        Spacer()
      }
      .foregroundStyle(.white)
      .padding(.horizontal, horizontalPadding)
      .padding(.top, safeArea.top)
      .padding(.top, topPadding)
      .padding(.bottom, bottomPadding)
      .frame(maxHeight: .infinity)
      .frame(height: size.height - (maxHeight * progress), alignment: .top)
      .background(.blue.gradient)
      .clipped()
      .contentShape(.rect)
      .offset(y: -minY)
    }
    .frame(height: headerHeight)
    .zIndex(1000)
  }

}

#Preview {
  HeaderView(safeArea: .init())
}
