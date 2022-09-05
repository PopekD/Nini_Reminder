//
//  NotyficcationManager.swift
//  Nini_Reminder
//
//  Created by Nini on 4.9.2022.
//

import SwiftUI
import UserNotifications



class NotyficationManager{

static let instance = NotyficationManager()
    
    
    func scheduleEveryDayPill() {
            let content = UNMutableNotificationContent()
            content.title = "Take your bloodpressure pill"
            content.subtitle = "Good Morning Nini, please take your blood pressure pill please :))"
            content.sound = .default
            content.badge = 1
        let trigger = UNTimeIntervalNotificationTrigger(timeInterval: 86400.0, repeats: false)
            
            let request = UNNotificationRequest(identifier: UUID().uuidString, content: content, trigger: trigger)
            UNUserNotificationCenter.current().add(request)
        }
    func scheduleEverySecondDayPill(){
            let content = UNMutableNotificationContent()
            content.title = "Take your Iron Pill"
            content.subtitle = "Good Morning Nini, please take your Iron pill as well, love you."
            content.sound = .default
            content.badge = 2
        let trigger = UNTimeIntervalNotificationTrigger(timeInterval: 172800.0, repeats: false)
            
            let request = UNNotificationRequest(identifier: UUID().uuidString, content: content, trigger: trigger)
            UNUserNotificationCenter.current().add(request)
        }
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
