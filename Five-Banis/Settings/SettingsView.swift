//
//  SettingsView.swift
//  Five-Banis
//
//  Created by RATTANDEEP SINGH on 29/12/20.
//

import SwiftUI

struct SettingsView: View {
    @EnvironmentObject var settings: UserSettings

    var body: some View {
        NavigationView {
            List {
                NavigationLink(destination: LanguageView()) {
                    Text(FiveBanisStrings.Languages.getString())
                        .padding()
                }
            }
            .navigationBarTitle(FiveBanisStrings.Settings.getString())
        }
    }
}

struct SettingsView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsView()
    }
}
