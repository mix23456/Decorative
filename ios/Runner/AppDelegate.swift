import UIKit
import Flutter

@UIApplicationMain
@objc class AppDelegate: FlutterAppDelegate {
  override func application(
    _ application: UIApplication,
    didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?
  ) -> Bool {
    -----------
    GMSServices.provideAPIKey("AIzaSyCmluiAEC4QzpD6-zqKNnTEbTkFJFDo-L4")
    GeneratedPluginRegistrant.register(with: self)
    -----------
    return super.application(application, didFinishLaunchingWithOptions: launchOptions)
  }
}
