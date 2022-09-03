//
//  NotyficcationManager.swift
//  Nini_Reminder
//
//  Created by Nini on 4.9.2022.
//

import SwiftUI
import UserNotifications

let instance = NotyficationManager()

class NotyficationManager{
    
    func requestAuthorization() {
        let option: UNAuthorizationOptions = [.alert, .sound, .badge]
        UNUserNotificationCenter.current().requestAuthorization(options: option) { succes, error in
            if let error = error {
                print("Error \(error)")
            }else {
                print("Succes")
            }
        }
    }
}
