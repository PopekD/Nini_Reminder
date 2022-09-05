//
//  ContainerViewController.swift
//  Nini_Reminder
//
//  Created by Nini on 4.9.2022.
//

import UIKit


class ContainerViewController: UIViewController {
    
    @IBOutlet weak var start_notyfication_button: UIButton!
    @IBOutlet weak var start_button: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    

    
    @IBAction func ask_for_permission(_ sender: Any) {
        NotyficationManager.instance.requestAuthorization()
        start_notyfication_button.isEnabled = true
        start_button.isEnabled = false
    }
    
    @IBAction func Pill_Every_day(_ sender: Any) {
       NotyficationManager.instance.scheduleEveryDayPill()
        start_notyfication_button.isEnabled = false
        
    }
    
    @IBAction func Pill_Second_day(_ sender: Any) {
        NotyficationManager.instance.scheduleEverySecondDayPill()
    }
    
}
