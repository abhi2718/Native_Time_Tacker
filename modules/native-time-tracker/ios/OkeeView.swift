//
//  OkeeView.swift
//  ActivityTracker
//
//  Created by Abhishek Singh on 22/11/24.
//

import SwiftUI
import FamilyControls
import DeviceActivity

struct OkeeView: View {
    let center = AuthorizationCenter.shared
    func requestFamilyAuthorization() {
        Task {
            do {
                if #available(iOS 16.0, *) {
                    try await center.requestAuthorization(for: .individual)
                } else {
                    // Fallback on earlier versions
                }
            } catch {
                print("Failed to enroll Aniyah with error: \(error)")
            }
        }
    }
    var body: some View {
        if #available(iOS 16.0, *) {
            ContentView()
                .onAppear {
                    requestFamilyAuthorization() // Request authorization when the app appears
                }
        } else {
            // Fallback on earlier versions
        }
    }
}




