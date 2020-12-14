//
//  MainView.swift
//  SimpleNavigation
//
//  Created by dev on 12/13/20.
//

import SwiftUI

struct MainView: View {
    @Binding var show: Bool
    var body: some View {
        VStack {
            Text("This is the main page")
            Button("Back To Splash") {
                self.show = false
            }
        }
    }
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView(show: .constant(true))
    }
}
