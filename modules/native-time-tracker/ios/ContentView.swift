//
//  ContentView.swift
//  NativeTimeTracker
//
//  Created by Abhishek Singh on 22/11/24.
//

//import SwiftUI
//import DeviceActivity
//import FamilyControls
//
//struct ContentView: View {
//    var body: some View {
//        Text("I am a preview of the app ,I will track time")
//    }
//}
//
//#Preview {
//    ContentView()
//}

import SwiftUI
import DeviceActivity
import FamilyControls
@available(iOS 16.0, *)
struct ContentView: View {
  @State private var context: DeviceActivityReport.Context = .init(rawValue: "Total Activity")
  @State private var filter = DeviceActivityFilter(
    segment: .daily(
      during: Calendar.current.dateInterval(
        of: .day, for: .now
      )!
    ),
    users: .all,
    devices: .init([.iPhone, .iPad, .mac])
  )
  var body: some View {
    ZStack {
      DeviceActivityReport(context, filter: filter)
      Spacer()
      Text("I will track time here too !")
    }
  }
}
struct ContentView_Previews: PreviewProvider {
  static var previews: some View {
      if #available(iOS 16.0, *) {
          ContentView()
      } else {
          // Fallback on earlier versions
      }
  }
}

