import Foundation
import UIKit
#if canImport(IDNowSDKCore)
import IDNowSDKCore
#endif

@objc public class IdNow: NSObject {
    
    @objc public func startIdNowSdk(token: String, language: String?, from viewController: UIViewController?, completion: @escaping (_ status: String, _ errorMessage: String?) -> Void) {
#if canImport(IDNowSDKCore)
        guard !token.isEmpty else { completion("failed", "Token is required"); return }
        guard let vc = viewController else { completion("failed", "No presenting view controller"); return }

        let preferred = (language?.isEmpty == false) ? language! : "en"
        IDNowSDK.shared.start(token: token, preferredLanguage: preferred, fromViewController: vc) { (result: IDNowSDK.IdentResult.type, statusCode: IDNowSDK.IdentResult.statusCode, message: String) in
            if result == .ERROR {
                let errorText = message.isEmpty ? String(describing: statusCode) : message
                completion("failed", errorText)
            } else if result == .FINISHED {
                completion("completed", nil)
            } else {
                completion("cancelled", nil)
            }
        }
#else
        completion("failed", "IDNowSDKCore not available in build environment. Ensure the framework is integrated and run via workspace.")
#endif
    }
}
