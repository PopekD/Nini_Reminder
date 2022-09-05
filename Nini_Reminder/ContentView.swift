//
//  ContentView.swift
//  Nini_Reminder
//
//  Created by Nini on 3.9.2022.
//

import SwiftUI
import UIKit

struct Nini_Reminder: View {
    var body: some View {
        storyboardview().edgesIgnoringSafeArea(.all)
    }
}

struct Nini_Reminder_Previews: PreviewProvider {
    static var previews: some View {
        Nini_Reminder()
    }
}

struct storyboardview: UIViewControllerRepresentable{
    func makeUIViewController(context content: Context) -> UIViewController {
        let storyboard = UIStoryboard(name:"Main", bundle: Bundle.main)
        let controler = storyboard.instantiateViewController(withIdentifier: "Home")
        return controler
    }
    func updateUIViewController(_ uiViewController: UIViewController, context: Context) {
        
    }
}
