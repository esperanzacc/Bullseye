//
//  TextViews.swift
//  Bullseye
//
//  Created by Esperanza on 2022-08-22.
//

import SwiftUI

struct InstructionText: View {
  var text: String
  
  var body: some View {
    Text(text.uppercased())
      .foregroundColor(Color("TextColor"))
      .bold()
      .kerning(2.0)
      .multilineTextAlignment(.center)
      .lineSpacing(4)
      .font(.footnote)
      
  }
}

struct BigNumberText: View {
  var text: String
  
  var body: some View {
    Text(text)
      .foregroundColor(Color("TextColor"))
      .kerning(-1.0)
      .fontWeight(.black)
      .font(.largeTitle)
      
  }
}

struct SliderLabelText: View {
  var text: String
  
  var body: some View {
    Text(text)
      .foregroundColor(Color("TextColor"))
      .bold()
      .frame(width: 35.0)
      
  }
}

struct LabelTextView: View {
  var text: String
  
  var body: some View {
    Text(text)
      .foregroundColor(Color("TextColor"))
      .bold()
      .font(.caption)
      .kerning(1.5)
  }
}

struct TextViews_Previews: PreviewProvider {
  static var previews: some View {
    VStack {
      InstructionText(text: "Instructions")
      BigNumberText(text: "999")
      SliderLabelText(text: "55")
      LabelTextView(text: "9")
    }
   
    
  }
}
