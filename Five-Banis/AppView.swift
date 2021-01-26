//
//  AppView.swift
//  Five-Banis
//
//  Created by RATTANDEEP SINGH on 29/12/20.
//

import SwiftUI

struct AppView: View {
    @EnvironmentObject var settings: UserSettings

    var body: some View {
        TabView {
            ContentView(paaths: testData)
                .tabItem {
                    Image(systemName: "list.dash")
                    Text(FiveBanisStrings.Paath.getString())
                }
            SettingsView()
                .tabItem {
                    Image(systemName: "square.and.pencil")
                    Text(FiveBanisStrings.Settings.getString())
                }
        }
    }
}

struct AppView_Previews: PreviewProvider {
    static var previews: some View {
        AppView()
    }
}
