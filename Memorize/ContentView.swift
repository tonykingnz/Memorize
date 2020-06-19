//
//  ContentView.swift
//  Memorize
//
//  Created by José Antônio Maria de Rezende Silva on 6/6/20.
//  Copyright © 2020 José Antônio Maria de Rezende Silva. All rights reserved.
//

import SwiftUI

//Keywords is Magenta, Indentifiers is Green and Swift Indentifiers is Purple.
//View is a rectangle area of the screen.

/// The main view of the application
struct ContentView: View {
    /// Create a propriertie called boby, that is the second view, and recive everything that behaves like a view.
    var body: some View {
        return HStack {
            ForEach(0..<4) {index in
                ZStack(content: {
                    RoundedRectangle(cornerRadius: 10.0).fill(Color.white)
                    RoundedRectangle(cornerRadius: 10.0).stroke(lineWidth: 3.0)//Return a view with roudend rectangle. The .stroke() is a function, and even, can have arguments.
                    Text("👻")//Return a view with the text
                })
            } //If the last argument has curly braches, it's label can be removed
        }
            .padding()
            .foregroundColor(Color.orange)//All views can have the function foregroundColor, even with ZStack and Text, because it's setting the envoriement that the view are goint to use to draw. Also can be overwriten. When put it generaly on a single line to outstand.
            .font(Font.largeTitle)//Sets the envoriment for everfont inside the view.
    }
}


























/// #This code below is the what make the SwiftUI preview work:
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
