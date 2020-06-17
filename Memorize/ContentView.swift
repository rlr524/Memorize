//
//  ContentView.swift
//  Memorize
//
//  Created by Rob Ranf on 6/16/20.
//  Copyright © 2020 Rob Ranf. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    // this is a property inside a struct; declare it as a var, name is body, and it's
    // of type some View meaning it is of type any struct as long as it behaves like a
    // view (implements var body)
    var body: some View {
        return HStack {
            ForEach(0..<4) { index in
                CardView(isFaceUp: true)
            }
        }
        .foregroundColor(Color.orange)
        .padding()
        .font(Font.largeTitle)
    }
}

struct CardView: View {
    var isFaceUp: Bool
    var body: some View {
        ZStack {
            if isFaceUp {
                RoundedRectangle(cornerRadius: 10.0).fill(Color.white)
                RoundedRectangle(cornerRadius: 10.0).stroke(lineWidth: 3.0)
                Text("👻")
            } else {
                RoundedRectangle(cornerRadius: 10.0).fill()
            }
        }
    }
}




struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
