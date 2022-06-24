//
//  RangerExtensionDelegate.swift
//  ranger WatchKit Extension
//
//  Created by Gabi DJ on 24.06.2022.
//

import Foundation
import WatchKit
import WatchConnectivity

class RangerExtensionDelegate: NSObject, WKExtensionDelegate, WCSessionDelegate
{
    private var isReachable: Bool
    
    func isPhoneReachable() -> Bool {
        return self.isReachable
    }
    
    override init() {
        self.isReachable = false
    }
    
    func session(_ session: WCSession, activationDidCompleteWith activationState: WCSessionActivationState, error: Error?) {
        // 
    }
    
    func watchKitSetup() {
        if (WCSession.isSupported()) {
            let session = WCSession.default
            session.delegate = self
            session.activate()

            // In your WatchKit extension, the value of this property is true when the paired iPhone is reachable via Bluetooth.
            // On iOS, the value is true when the paired Apple Watch is reachable via Bluetooth and the associated Watch app is running in the foreground.
            // In all other cases, the value is false.
            if session.isReachable {
                self.isReachable = session.isReachable
            }
        }
    }

    func applicationDidFinishLaunching () {
        self.watchKitSetup()
    }

    // Called when session.reachable value changes, such as when a user wearing an Apple Watch gets out of range of their iPhone.
    func sessionReachabilityDidChange(_ session: WCSession) {
        if session.isReachable {
            self.isReachable = session.isReachable
        } else {
            self.isReachable = session.isReachable
        }
    }
}
