//
//  SplashView.swift
//  SimpleNavigation
//
//  Created by dev on 12/13/20.
//

import SwiftUI

struct SplashView: View {
    @Binding var show: Bool
    var body: some View {
        Text("This is splash")
    }
}

struct SplashView_Previews: PreviewProvider {
    static var previews: some View {
        SplashView(show: .constant(false))
    }
}
