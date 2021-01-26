//
//  PaathCell.swift
//  Five-Banis
//
//  Created by RATTANDEEP SINGH on 29/12/20.
//

import SwiftUI

struct PaathCell: View {
    @EnvironmentObject var settings: UserSettings
    let paath: Paath
    
    var body: some View {
        NavigationLink(destination: PaathContent(paath: paath)) {
            Text(paath.name.getString())
                .padding()
        }
    }
}

struct PaathCell_Previews: PreviewProvider {
    static var previews: some View {
        PaathCell(paath: testPaath)
    }
}
