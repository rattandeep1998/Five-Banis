//
//  Five_BanisApp.swift
//  Five-Banis
//
//  Created by RATTANDEEP SINGH on 29/12/20.
//

import SwiftUI

class UserSettings: ObservableObject {
    @Published var currentLangCode: String
    
    init() {
        guard let languageCode: String = UserDefaults.standard.string(forKey: "languageCode") else {
            let languageCode: String = Locale.current.languageCode ?? "en"
            UserDefaults.standard.setValue(languageCode, forKey: "languageCode")
            self.currentLangCode = languageCode
            return
        }
        
        self.currentLangCode = languageCode
    }
}

let testPaath: Paath = Paath(id: 1, name: FiveBanisStrings.JapjiSahib, content: FiveBanisStrings.JapjiSahibContent)

var testData: [Paath] = [
    Paath(id: 1, name: FiveBanisStrings.JapjiSahib, content: FiveBanisStrings.JapjiSahibContent),
    Paath(id: 2, name: FiveBanisStrings.JaapSahib, content: FiveBanisStrings.JaapSahibContent),
    Paath(id: 3, name: FiveBanisStrings.TavPrasadSavaiye, content: FiveBanisStrings.TavPrasadSavaiyeContent),
    Paath(id: 4, name: FiveBanisStrings.ChaupaiSahib, content: FiveBanisStrings.ChaupaiSahibContent),
    Paath(id: 5, name: FiveBanisStrings.AnandSahib, content: FiveBanisStrings.AnandSahibContent)
]

let userSettings: UserSettings = UserSettings()

@main
struct Five_BanisApp: App {
        
    var body: some Scene {
        WindowGroup {
            AppView().environmentObject(userSettings)
        }
    }
}
