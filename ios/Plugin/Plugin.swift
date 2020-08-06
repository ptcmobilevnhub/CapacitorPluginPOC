import Foundation
import Capacitor

/**
 * Please read the Capacitor iOS Plugin Development Guide
 * here: https://capacitorjs.com/docs/plugins/ios
 */
@objc(LoginPlugin)
public class LoginPlugin: CAPPlugin {
    
    @objc func showLogin(_ call: CAPPluginCall) {
//        #if DEBUG
        print("Javascript -> invoke Native API")
//        #endif
        
        let value = call.getString("value") ?? ""
        let storyboard = UIStoryboard(name: "Login", bundle: nil)
        print(storyboard)
        DispatchQueue.main.async {
            let controller = storyboard.instantiateViewController(withIdentifier: "CustomViewController") as? CustomViewController
            UIApplication.shared.windows.first!.rootViewController = UINavigationController(rootViewController: controller!)
            //self.bridge.viewController.present(UINavigationController(rootViewController: controller!), animated: true, completion: nil)
            controller?.cancelHandler = {
                //UIApplication.shared.windows.first!.rootViewController = CAPBridgeViewController()
                call.success([
                    "value": value
                ])
            }
            
        }
    }
}
