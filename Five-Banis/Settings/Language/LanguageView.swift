//
//  LanguageView.swift
//  Five-Banis
//
//  Created by RATTANDEEP SINGH on 29/12/20.
//

import SwiftUI

class Language: Identifiable, ObservableObject {
    var id: String
    @Published var name: String
    
    init(id: String, name: String) {
        self.id = id
        self.name = name
    }
}

struct LanguageView: View {
    @EnvironmentObject var settings: UserSettings
    
    var body: some View {
        
        let languagesSupported: [Language] = [
            Language(id: "en", name: FiveBanisStrings.English.getString()),
            Language(id: "hi", name: FiveBanisStrings.Hindi.getString())
        ]
        
        List(languagesSupported) { language in
            HStack {
                Text(language.name)
                Spacer()
                Image(systemName: settings.currentLangCode == language.id ? "checkmark.circle.fill" : "circle")
            }
            .padding()
            .contentShape(Rectangle())
            .onTapGesture {
                settings.currentLangCode = language.id
                UserDefaults.standard.setValue(language.id, forKey: "languageCode")
            }
        }
        .navigationBarTitle(FiveBanisStrings.Languages.getString(), displayMode: .inline)
    }
}

struct LanguageView_Previews: PreviewProvider {
    static var previews: some View {
        LanguageView()
    }
}
