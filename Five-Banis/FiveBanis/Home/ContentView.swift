//
//  ContentView.swift
//  Five-Banis
//
//  Created by RATTANDEEP SINGH on 29/12/20.
//

import SwiftUI

struct ContentView: View {
    @EnvironmentObject var settings: UserSettings
    let paaths: [Paath]
    
    var body: some View {
        NavigationView {
            List(paaths) { paath in
                PaathCell(paath: paath)
            }
            .id(UUID())
            .navigationBarTitle(FiveBanisStrings.FiveBaanis.getString())
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(paaths: testData)
    }
}
