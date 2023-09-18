//
//  SwiftUIView.swift
//  fghjk
//
//  Created by dhanvin_macbook on 14/8/23.
//

import SwiftUI
//Users/dhanvin_macbook/Desktop/fghjk/fghjk/SwiftUIView.swift:10:18 Global 'var' declaration requires an initializer expression or an explicitly stated getter

    

struct SwiftUIView: View {
    @Binding var bindedHello: String
    var body: some View {
        Text("bindedHello")
    }
}

struct SwiftUIView_Previews: PreviewProvider {
    static var previews: some View {
        SwiftUIView(bindedHello: .constant(""))
    }
}
