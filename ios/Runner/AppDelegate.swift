import ASATools
import Flutter
import UIKit

@main
@objc class AppDelegate: FlutterAppDelegate {
  override func application(
    _ application: UIApplication,
    didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?
  ) -> Bool {
    

    GeneratedPluginRegistrant.register(with: self)
    
    ASATools.instance.attribute(apiToken: "8957b0ee-ed6d-433e-b0df-d86505b374d2") { response, error in
        if let error = error {
            print("Error during attribution: \(error.localizedDescription)")
        }
        if let response = response {
            print("Attribution response: \(response)")
            
        }
    }
    
    return super.application(application, didFinishLaunchingWithOptions: launchOptions)
  }
}