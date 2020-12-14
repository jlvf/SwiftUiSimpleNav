//
//  ContentView.swift
//  SimpleNavigation
//
//  Created by dev on 12/13/20.
//

import SwiftUI

struct ContentView: View {
    @State var show: Bool = false
    var body: some View {
        VStack {
            if !show {
                SplashView(show: $show)
                    .frame(maxWidth: .infinity, maxHeight: .infinity)
                    .transition(AnyTransition.move(edge: .leading)).animation(.default)
                    .onAppear() {
                        DispatchQueue.main.asyncAfter(deadline: .now() + 5.0) {
                            self.show = true
                        }
                    }
            } else {
                MainView(show: $show)
                    .frame(maxWidth: .infinity, maxHeight: .infinity)
                    .transition(AnyTransition.move(edge: .trailing)).animation(.default)
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
