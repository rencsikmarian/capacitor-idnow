import Foundation
import Capacitor
import UIKit

@objc(IdNowPlugin)
public class IdNowPlugin: CAPPlugin, CAPBridgedPlugin {
    public let identifier = "IdNowPlugin"
    public let jsName = "IdNow"
    public let pluginMethods: [CAPPluginMethod] = [
        CAPPluginMethod(name: "startIdNowSdk", returnType: CAPPluginReturnPromise)
    ]

    private let implementation = IdNow()

    @objc public func startIdNowSdk(_ call: CAPPluginCall) {
        guard let token = call.getString("token"), !token.isEmpty else { call.reject("token is required"); return }
        let language = call.getString("language")
        implementation.startIdNowSdk(token: token, language: language, from: self.bridge?.viewController) { status, errorMessage in
            if status == "failed" {
                call.reject(errorMessage ?? "Unknown error")
            } else {
                call.resolve(["status": status])
            }
        }
    }
}
