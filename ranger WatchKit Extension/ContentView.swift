//
//  ContentView.swift
//  ranger WatchKit Extension
//
//  Created by Gabi DJ on 24.06.2022.
//

import SwiftUI


struct ContentView: View {
    var body: some View {
        let delegate =  RangerExtensionDelegate()
        let phoneReachable = delegate.isPhoneReachable()
        
        
        
        if (phoneReachable) {
            Text("Reachable!")
                .padding()
        } else {
            Text("Unreachable!")
                .padding()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}


