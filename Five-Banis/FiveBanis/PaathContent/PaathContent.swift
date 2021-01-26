//
//  PaathContent.swift
//  Five-Banis
//
//  Created by RATTANDEEP SINGH on 29/12/20.
//

import SwiftUI

struct PaathContent: View {
    @EnvironmentObject var settings: UserSettings
    let paath: Paath
    
    var body: some View {
        let paathLines: [String] = paath.content.getString().components(separatedBy: CharacterSet.newlines)
        
        ScrollView {
            VStack {
                ForEach(paathLines, id: \.self) { paathLine in
                    Text(paathLine)
                        .multilineTextAlignment(.center)
                        .lineLimit(nil)
                        .padding(.vertical, 2.0)
                        .lineSpacing(10)
                        .font(.system(size: 20.0))
                }
                .frame(maxWidth: .infinity)
            }
            .padding(.bottom, 20.0)
        }
        .navigationBarTitle(paath.name.getString(), displayMode: .inline)
    }
}

struct PaathContent_Previews: PreviewProvider {
    static var previews: some View {
        PaathContent(paath: testPaath)
    }
}
