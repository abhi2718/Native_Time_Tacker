//
//
//import SwiftUI
//import DeviceActivity
//import FamilyControls
//import DeviceActivity
//
//
//@available(iOS 16.0, *)
//struct ContentView: View {
//    let ac = AuthorizationCenter.shared
//    let model = ScreenTimeSelectAppsModel()
//   
////  @State private var context: DeviceActivityReport.Context = .init(rawValue: "Total Activity")
////  @State private var filter = DeviceActivityFilter(
////    segment: .daily(
////      during: Calendar.current.dateInterval(
////        of: .day, for: .now
////      )!
////    ),
////    users: .all,
////    devices: .init([.iPhone, .iPad, .mac])
////  )
//  var body: some View {
//    ZStack {
//     // DeviceActivityReport(context, filter: filter)
//      ScreenTimeSelectAppsContentView(model: model)
////      Spacer()
////      Text("I will track time here too !")
//    }
//  }
//}
//
//struct ContentView_Previews: PreviewProvider {
//  static var previews: some View {
//      if #available(iOS 16.0, *) {
//          ContentView()
//      } else {
//          // Fallback on earlier versions
//      }
//  }
//}
//
//
//class ScreenTimeSelectAppsModel: ObservableObject {
//    @Published var activitySelection = FamilyActivitySelection()
//
//    init() { }
//}
//
//
//
//struct ScreenTimeSelectAppsContentView: View {
//
//    @State private var pickerIsPresented = false
//    @ObservedObject var model: ScreenTimeSelectAppsModel
//
//    let schedule = DeviceActivitySchedule(
//        intervalStart: DateComponents(hour: 0, minute: 0, second: 0),
//        intervalEnd: DateComponents(hour: 23, minute: 59, second: 59),
//        repeats: true
//    )
//    
//    
//    
//    var body: some View {
//        Button {
//            pickerIsPresented = true
//        } label: {
//            Text("Select Apps")
//        }
//        .familyActivityPicker(
//            isPresented: $pickerIsPresented,
//            selection: $model.activitySelection
//        )
//    }
//}

// ContentView.swift
// okee
//
// Created by Md Alishan Ali on 13/11/24.
//
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
        Text("Hi")
         DeviceActivityReport(context, filter: filter)
      //Spacer()
     // ShieldView()
//      ScreenTimeSelectAppsContentView(model: ScreenTimeSelectAppsModel())
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
