//
//  Color+Extension.swift
//  PeekScrollView
//
//  Created by Mohammed Rokon Uddin on 9/30/24.
//


import SwiftUI

extension Color {
  static var random: Color {
    Color(
      red: .random(in: 0...1),
      green: .random(in: 0...1),
      blue: .random(in: 0...1))
  }
}

