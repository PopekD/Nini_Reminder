//
//  ContainerViewController.swift
//  Nini_Reminder
//
//  Created by Nini on 4.9.2022.
//

import UIKit
import UserNotifications

class ContainerViewController: UIViewController {
    
    @IBOutlet weak var start_notyfication_button: UIButton!
    @IBOutlet weak var start_button: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    

    
    @IBAction func ask_for_permission(_ sender: Any) {
        NotyficationManager.instance.requestAuthorization(x: start_button, y: start_notyfication_button)
    }
    
    @IBAction func Pill_Every_day(_ sender: Any) {
       NotyficationManager.instance.scheduleEveryDayPill()
       NotyficationManager.instance.scheduleEveryHourReminder()
        NotyficationManager.instance.scheduleEveryDayAfterNoon()
        start_notyfication_button.isEnabled = false
        
    }
}
