//
//  NotyficcationManager.swift
//  Nini_Reminder
//
//  Created by Nini on 4.9.2022.
//

import SwiftUI
import UserNotifications
import Foundation


class NotyficationManager{

static let instance = NotyficationManager()
    
    
    func scheduleEveryDayPill() {
            let content = UNMutableNotificationContent()
            content.title = "Take your bloodpressure pill"
            content.subtitle = "Good Morning Nini, please take your blood pressure pill please :))"
            content.sound = .default
            content.badge = 1
        var dateComponents = DateComponents()
        dateComponents.calendar = Calendar.current
        dateComponents.hour = 8
        let trigger = UNCalendarNotificationTrigger(dateMatching: dateComponents, repeats: true)
            
            let request = UNNotificationRequest(identifier: UUID().uuidString, content: content, trigger: trigger)
            UNUserNotificationCenter.current().add(request)
        }
    func scheduleEverySecondDayPill(){
            let content = UNMutableNotificationContent()
            content.title = "Take your Iron Pill"
            content.subtitle = "Good Morning Nini, please take your Iron pill as well, love you."
            content.sound = .default
            content.badge = 2
        
        let date = Date()
        let twodays = date.addingTimeInterval( 2*(24*60*60) )
        let end =  Calendar.current.date(bySettingHour: 8, minute: 0, second: 0, of: twodays)
        let enddate = Calendar.current.dateComponents([.year, .month, .day, .hour, .minute, .second], from: end!)
        
        let trigger = UNCalendarNotificationTrigger(dateMatching: enddate, repeats: true)
            
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
