//
//  Alerts.swift
//  PrashantAdvait
//
//  Created by Jaya Sabeen on 15/04/24.
//

import SwiftUI

struct AlertItem: Identifiable {
    let id = UUID()
    let title: Text
    let message: Text
    let dismissButton: Alert.Button
}

struct AlertContext {
    static let invalidError = AlertItem(title: Text("Invalid req"), message: Text("Invalid request"), dismissButton: .default(Text("Ok")))
}
