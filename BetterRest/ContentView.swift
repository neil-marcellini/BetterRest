//
//  ContentView.swift
//  BetterRest
//
//  Created by Neil Marcellini on 10/29/20.
//

import SwiftUI

struct ContentView: View {
    @State private var sleepAmount = 8.0
    @State private var wakeUp = Date()
    var body: some View {
        
        Form {
            DatePicker("Please enter a date", selection: $wakeUp, in: Date()...)
                .labelsHidden()
            Stepper(value: $sleepAmount, in: 4...12, step: 0.25) {
                Text("\(sleepAmount, specifier: "%g") hours")
            }
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .previewDevice("iPhone 11")
    }
}
