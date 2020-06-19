//
//  ContentView.swift
//  Memorize
//
//  Created by José Antônio Maria de Rezende Silva on 6/6/20.
//  Copyright © 2020 José Antônio Maria de Rezende Silva. All rights reserved.
//

import SwiftUI

//Keywords is Magenta, Indentifiers is Green and Swift Indentifiers is Purple.

/// The main view of the application
struct ContentView: View {
    /// Create a propriertie called boby, that is the second view, and recive everything that behaves like a view.
    var body: some View {
        return RoundedRectangle(cornerRadius: 10.0)
        ///*return*/ Text("Hello 😀, World!")
    }
}


























/// #This code below is the what make the SwiftUI preview work:
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
