//
//  AccountSection.swift
//  GreetApp
//
//  Created by Kevin Ortiz on 12/16/21.
//

protocol SectionType: CustomStringConvertible {
    var containsSwitch: Bool { get }
}

enum AccountSection: Int, CaseIterable, CustomStringConvertible {
    case Social
    case Communications
    
    
    var description: String {
        switch self {
        case .Social: return "Support"
        case .Communications: return "Communications"
            
        }
    }
}

enum  SocialOptions: Int, CaseIterable, SectionType {

        case editProfile
        case logout
    
    var containsSwitch: Bool { return false }
    
        var description: String {
            switch self {
            case .editProfile: return "Edit Profile"
            case .logout: return "Logout"
                
            }
        }

}

enum  CommunicationOptions: Int, CaseIterable, SectionType {

        case notification
        case email
        case reportCrashes
    
        var containsSwitch: Bool {
            switch self {
            case .notification: return true
            case .email: return true
            case .reportCrashes: return true

            }
    }

    
        var description: String {
            switch self {
            case .notification: return "Notification"
            case .email: return "Email"
             case .reportCrashes: return "Report Crashes"
                
            }
        }
}
