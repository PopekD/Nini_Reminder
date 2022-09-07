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
    
    func checkifNotyfication(x: UIButton, y: UIButton) {
        
        let current = UNUserNotificationCenter.current()
        
        current.getNotificationSettings(completionHandler: {(settings) in
    
                if settings.authorizationStatus == .authorized{
                    DispatchQueue.main.async{
                        x.isEnabled = false
                        y.isEnabled = true
                    }
            } else if settings.authorizationStatus == .denied{
                DispatchQueue.main.async{
                    x.isEnabled = true
                    y.isEnabled = false
                }
            }
        })

    }
    
    func requestAuthorization(x: UIButton, y: UIButton) {
        let option: UNAuthorizationOptions = [.alert, .sound, .badge]
        UNUserNotificationCenter.current().requestAuthorization(options: option) { succes, error in
            if let error = error {
                print("Error \(error)")
            }else {
                self.checkifNotyfication(x: x, y: y)
                print("Succes")
            }
        }
    }
    
    func scheduleEveryDayPill() {
        let content = UNMutableNotificationContent()
        content.title = "GOOD MORNING NINI! <3"
        content.subtitle = "Good Morning, take your blood pressure pill please. HAVE A GREAT DAY :))"
        content.sound = .default
        content.badge = 1
        var dateComponents = DateComponents()
        dateComponents.calendar = Calendar.current
        dateComponents.hour = 8
        let trigger = UNCalendarNotificationTrigger(dateMatching: dateComponents, repeats: true)
        let request = UNNotificationRequest(identifier: UUID().uuidString, content: content, trigger: trigger)
            UNUserNotificationCenter.current().add(request)
        }
    
    func scheduleEveryHourReminder(){
        let content = UNMutableNotificationContent()
        content.title = "Hello Nini"
        content.subtitle = "Wish you a good afternoon, Love you very much <3"
        content.sound = .default
        content.badge = 1
        var dateComponents = DateComponents()
        dateComponents.calendar = Calendar.current
        dateComponents.hour = 13
        let trigger = UNCalendarNotificationTrigger(dateMatching: dateComponents, repeats: true)
        let request = UNNotificationRequest(identifier: UUID().uuidString, content: content, trigger: trigger)
        UNUserNotificationCenter.current().add(request)
    }
    
    func scheduleEveryDayAfterNoon(){
        let content = UNMutableNotificationContent()
        content.title = "Reminder"
        content.subtitle = "A little reminder that you're the prettiest girl in the world, wish you a great evening <3"
        content.sound = .default
        content.badge = 1
        var dateComponents = DateComponents()
        dateComponents.calendar = Calendar.current
        dateComponents.hour = 19
        let trigger = UNCalendarNotificationTrigger(dateMatching: dateComponents, repeats: true)
        let request = UNNotificationRequest(identifier: UUID().uuidString, content: content, trigger: trigger)
        UNUserNotificationCenter.current().add(request)
    }
    
    func scheduleEveryDayNight(){
        let content = UNMutableNotificationContent()
        content.title = "Good Night"
        content.subtitle = "Godd Night, sweet dreams and remember that I love you very much. Sleep well :))"
        content.sound = .default
        content.badge = 1
        var dateComponents = DateComponents()
        dateComponents.calendar = Calendar.current
        dateComponents.hour = 22
        dateComponents.minute = 30
        let trigger = UNCalendarNotificationTrigger(dateMatching: dateComponents, repeats: true)
        let request = UNNotificationRequest(identifier: UUID().uuidString, content: content, trigger: trigger)
        UNUserNotificationCenter.current().add(request)
    }
}

