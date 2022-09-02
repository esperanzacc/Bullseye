//
//  BackgroundView.swift
//  Bullseye
//
//  Created by Esperanza on 2022-08-23.
//

import SwiftUI

struct BackgroundView: View {
  @Binding var game: Game
  
  var body: some View {
    VStack {
      TopView(game: $game)
      Spacer()
      BottomView(game: $game)
    }.padding()
      .background(
        Color("BackgroundColor")
          .edgesIgnoringSafeArea(.all)
      )
  }
}

struct TopView: View {
  @Binding var game: Game
  
  var body: some View {
    HStack {
      RoundedImageViewStroked(systemName: "arrow.counterclockwise")
      Spacer()
      RoundedImageViewFilled(systemName: "list.dash")
    }
  }
}


struct NumberView: View {
  var title: String
  var text: String
  
  var body: some View {
    VStack(spacing: 5) {
      LabelTextView(text: title.uppercased())
      RoundRectTextView(text: text)
    }
  }
}

struct BottomView: View {
  @Binding var game: Game
  
  var body: some View {
    HStack {
      NumberView(title: "score", text: String(game.score))
      Spacer()
      NumberView(title: "round", text: String(game.round))
    }
  }
}

struct BackgroundView_Previews: PreviewProvider {
  static var previews: some View {
    BackgroundView(game: .constant(Game()))
  }
}
