import ExpoModulesCore
import WebKit

// This view will be used as a native component. Make sure to inherit from `ExpoView`
// to apply the proper styling (e.g. border radius and shadows).
import ExpoModulesCore
import SwiftUI

// Define the ExpoSettingsView class to show only the SwiftUI button
class NativeTimeTrackerView: ExpoView {
    var buttonHostingController: UIHostingController<OkeeView>?

    required init(appContext: AppContext? = nil) {
        super.init(appContext: appContext)
        clipsToBounds = true

        // Set up SwiftUI button view
        let buttonView = OkeeView()
        
        // Host the SwiftUI view using UIHostingController
        buttonHostingController = UIHostingController(rootView: buttonView)
        
        if let buttonHostingView = buttonHostingController?.view {
            addSubview(buttonHostingView)
        }
    }

    override func layoutSubviews() {
        super.layoutSubviews()

        // Layout the SwiftUI button to fill the entire view
        buttonHostingController?.view.frame = bounds
    }
}
