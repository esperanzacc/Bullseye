//
//  Shape.swift
//  Bullseye
//
//  Created by Esperanza on 2022-08-22.
//

import SwiftUI

struct Shape: View {
  var body: some View {
    VStack {
      Circle()
//        .fill(Color.blue)
//        .inset(by: 10.0)
//        .stroke(Color.blue, lineWidth: 20.0)
        .strokeBorder(Color.blue, lineWidth: 20.0)
        .frame(width: 200, height: 100.0)
      RoundedRectangle(cornerRadius: 20.0)
        .stroke(Color.blue, lineWidth: 20.0)
        .frame(width: 200, height: 100.0)
      Capsule()
        .strokeBorder(Color.blue, lineWidth: 20.0)
        .frame(width: 200, height: 100.0)
      Ellipse()
        .fill(Color.blue)
        .frame(width: 200, height: 100.0)
             
    }
    .background(Color.green)
  }
}

struct Shape_Previews: PreviewProvider {
  static var previews: some View {
      Shape()
  }
}
