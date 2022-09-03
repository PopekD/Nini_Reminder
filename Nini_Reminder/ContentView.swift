//
//  ContentView.swift
//  Nini_Reminder
//
//  Created by Nini on 3.9.2022.
//

import SwiftUI


struct Nini_Reminder: View {
    var body: some View {
        ZStack{
            Color(UIColor.darkGray).edgesIgnoringSafeArea(.all)
        VStack(spacing: 40){
            Button("CLICK ME!") {
                instance.requestAuthorization()
            }
        }
        }
    }
}

struct Nini_Reminder_Previews: PreviewProvider {
    static var previews: some View {
        Nini_Reminder()
    }
}
