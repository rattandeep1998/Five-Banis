//
//  FiveBanisStrings.swift
//  Five-Banis
//
//  Created by RATTANDEEP SINGH on 29/12/20.
//

import Foundation

internal enum FiveBanisStrings {
    case JapjiSahib
    case JaapSahib
    case TavPrasadSavaiye
    case ChaupaiSahib
    case AnandSahib
    
    case English
    case Hindi
    
    case Languages
    case Settings
    case Paath
    
    case FiveBaanis
    
    case JapjiSahibContent
    case JaapSahibContent
    case TavPrasadSavaiyeContent
    case ChaupaiSahibContent
    case AnandSahibContent
    
    internal func getString(langCode: String? = userSettings.currentLangCode) -> String {
        guard let langCode: String = langCode, let path: String = Bundle.main.path(forResource: langCode, ofType: "lproj"), let bundle: Bundle = Bundle(path: path) else {
            return getDefaultString()
        }
        
        return getLanguageSpecificString(bundle: bundle)
    }
    
    private func getDefaultString() -> String {
        switch self {
        case .JapjiSahib:
            return NSLocalizedString("JapjiSahib", comment: "")
        case .JaapSahib:
            return NSLocalizedString("JaapSahib", comment: "")
        case .TavPrasadSavaiye:
            return NSLocalizedString("TavPrasadSavaiye", comment: "")
        case .ChaupaiSahib:
            return NSLocalizedString("ChaupaiSahib", comment: "")
        case .AnandSahib:
            return NSLocalizedString("AnandSahib", comment: "")
            
        case .English:
            return NSLocalizedString("English", comment: "")
        case .Hindi:
            return NSLocalizedString("Hindi", comment: "")
        case .Languages:
            return NSLocalizedString("Languages", comment: "")
        case .Settings:
            return NSLocalizedString("Settings", comment: "")
        case .Paath:
            return NSLocalizedString("Paath", comment: "")
            
        case .FiveBaanis:
            return NSLocalizedString("FiveBaanis", comment: "")
            
        case .JapjiSahibContent:
            return NSLocalizedString("JapjiSahibContent", comment: "")
        case .JaapSahibContent:
            return NSLocalizedString("JaapSahibContent", comment: "")
        case .TavPrasadSavaiyeContent:
            return NSLocalizedString("TavPrasadSavaiyeContent", comment: "")
        case .ChaupaiSahibContent:
            return NSLocalizedString("ChaupaiSahibContent", comment: "")
        case .AnandSahibContent:
            return NSLocalizedString("AnandSahibContent", comment: "")
        }
    }
    
    private func getLanguageSpecificString(bundle: Bundle) -> String {
        switch self {
        case .JapjiSahib:
            return NSLocalizedString("JapjiSahib", bundle: bundle, comment: "")
        case .JaapSahib:
            return NSLocalizedString("JaapSahib", bundle: bundle, comment: "")
        case .TavPrasadSavaiye:
            return NSLocalizedString("TavPrasadSavaiye", bundle: bundle, comment: "")
        case .ChaupaiSahib:
            return NSLocalizedString("ChaupaiSahib", bundle: bundle, comment: "")
        case .AnandSahib:
            return NSLocalizedString("AnandSahib", bundle: bundle, comment: "")
            
        case .English:
            return NSLocalizedString("English", bundle: bundle, comment: "")
        case .Hindi:
            return NSLocalizedString("Hindi", bundle: bundle, comment: "")
        case .Languages:
            return NSLocalizedString("Languages", bundle: bundle, comment: "")
        case .Settings:
            return NSLocalizedString("Settings", bundle: bundle, comment: "")
        case .Paath:
            return NSLocalizedString("Paath", bundle: bundle, comment: "")
            
        case .FiveBaanis:
            return NSLocalizedString("FiveBaanis", bundle: bundle, comment: "")
            
        case .JapjiSahibContent:
            return NSLocalizedString("JapjiSahibContent", bundle: bundle, comment: "")
        case .JaapSahibContent:
            return NSLocalizedString("JaapSahibContent", bundle: bundle, comment: "")
        case .TavPrasadSavaiyeContent:
            return NSLocalizedString("TavPrasadSavaiyeContent", bundle: bundle, comment: "")
        case .ChaupaiSahibContent:
            return NSLocalizedString("ChaupaiSahibContent", bundle: bundle, comment: "")
        case .AnandSahibContent:
            return NSLocalizedString("AnandSahibContent", bundle: bundle, comment: "")
        }
    }
}


