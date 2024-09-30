//
//  CustomScrollBehavior.swift
//  PeekScrollView
//
//  Created by Mohammed Rokon Uddin on 9/30/24.
//

import SwiftUI

struct CustomScrollBehavior: ScrollTargetBehavior {
  var maxHeight: CGFloat
  func updateTarget(_ target: inout ScrollTarget, context: TargetContext) {
    if target.rect.minY < maxHeight {
      target.rect = .zero
    }
  }
}
