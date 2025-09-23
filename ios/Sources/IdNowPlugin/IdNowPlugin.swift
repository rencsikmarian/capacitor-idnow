import Foundation
import Capacitor
import UIKit

@objc(IdNowPlugin)
public class IdNowPlugin: CAPPlugin, CAPBridgedPlugin {
    public let identifier = "IdNowPlugin"
    public let jsName = "IdNow"
    public let pluginMethods: [CAPPluginMethod] = [
        CAPPluginMethod(name: "startIdNowSdk", returnType: CAPPluginReturnPromise),
        CAPPluginMethod(name: "setCompanyId", returnType: CAPPluginReturnPromise),
        CAPPluginMethod(name: "setShowVideoOverviewCheck", returnType: CAPPluginReturnPromise),
        CAPPluginMethod(name: "setShowErrorSuccessScreen", returnType: CAPPluginReturnPromise),
        CAPPluginMethod(name: "setAppGoogleRating", returnType: CAPPluginReturnPromise),
        CAPPluginMethod(name: "setIdNowLanguage", returnType: CAPPluginReturnPromise),
        CAPPluginMethod(name: "setDefaultTextColor", returnType: CAPPluginReturnPromise),
        CAPPluginMethod(name: "presentModaly", returnType: CAPPluginReturnPromise),
        CAPPluginMethod(name: "isTestEnvironment", returnType: CAPPluginReturnPromise),
        CAPPluginMethod(name: "enableStatusBarStyleLightContent", returnType: CAPPluginReturnPromise),
        CAPPluginMethod(name: "setPrimaryBrandColor", returnType: CAPPluginReturnPromise),
        CAPPluginMethod(name: "setProceedButtonBackgroundColor", returnType: CAPPluginReturnPromise),
        CAPPluginMethod(name: "setProceedButtonTextColor", returnType: CAPPluginReturnPromise),
        CAPPluginMethod(name: "setPhotoIdentRetakeButtonBackgroundColor", returnType: CAPPluginReturnPromise),
        CAPPluginMethod(name: "setPhotoIdentRetakeButtonTextColor", returnType: CAPPluginReturnPromise),
        CAPPluginMethod(name: "setTextFieldColor", returnType: CAPPluginReturnPromise),
        CAPPluginMethod(name: "setFailureColor", returnType: CAPPluginReturnPromise),
        CAPPluginMethod(name: "setSuccessColor", returnType: CAPPluginReturnPromise),
        CAPPluginMethod(name: "setCqcOuterRingColor", returnType: CAPPluginReturnPromise),
        CAPPluginMethod(name: "setCqcDefaultInnerRingColor", returnType: CAPPluginReturnPromise),
        CAPPluginMethod(name: "setCqcPoorQualityInnerColor", returnType: CAPPluginReturnPromise),
        CAPPluginMethod(name: "setCqcModerateQualityInnerColor", returnType: CAPPluginReturnPromise),
        CAPPluginMethod(name: "setCqcExcellentQualityInnerColor", returnType: CAPPluginReturnPromise),
        CAPPluginMethod(name: "setFontNameRegular", returnType: CAPPluginReturnPromise),
        CAPPluginMethod(name: "setFontNameMedium", returnType: CAPPluginReturnPromise),
        CAPPluginMethod(name: "setFontNameLight", returnType: CAPPluginReturnPromise)
    ]

    private let implementation = IdNow()

    // Setters wire-up
    @objc public func setCompanyId(_ call: CAPPluginCall) { guard let v = call.getString("companyId"), !v.isEmpty else { call.reject("companyId is required"); return }; implementation.setCompanyId(v); call.resolve() }
    @objc public func setShowVideoOverviewCheck(_ call: CAPPluginCall) { guard let v = call.getBool("enabled") else { call.reject("enabled is required"); return }; implementation.setShowVideoOverviewCheck(v); call.resolve() }
    @objc public func setShowErrorSuccessScreen(_ call: CAPPluginCall) { guard let v = call.getBool("enabled") else { call.reject("enabled is required"); return }; implementation.setShowErrorSuccessScreen(v); call.resolve() }
    @objc public func setAppGoogleRating(_ call: CAPPluginCall) { /* no-op on iOS */ call.resolve() }
    @objc public func setIdNowLanguage(_ call: CAPPluginCall) { guard let v = call.getString("language"), !v.isEmpty else { call.reject("language is required"); return }; implementation.setIdNowLanguage(v); call.resolve() }
    @objc public func presentModaly(_ call: CAPPluginCall) { guard let v = call.getBool("enabled") else { call.reject("enabled is required"); return }; implementation.presentModaly(v); call.resolve() }
    @objc public func isTestEnvironment(_ call: CAPPluginCall) { guard let v = call.getBool("enabled") else { call.reject("enabled is required"); return }; implementation.isTestEnvironment(v); call.resolve() }
    @objc public func enableStatusBarStyleLightContent(_ call: CAPPluginCall) { guard let v = call.getBool("enabled") else { call.reject("enabled is required"); return }; implementation.enableStatusBarStyleLightContent(v); call.resolve() }

    @objc public func setDefaultTextColor(_ call: CAPPluginCall) { guard let v = call.getString("color") else { call.reject("color is required"); return }; implementation.setDefaultTextColor(v); call.resolve() }
    @objc public func setPrimaryBrandColor(_ call: CAPPluginCall) { guard let v = call.getString("color") else { call.reject("color is required"); return }; implementation.setPrimaryBrandColor(v); call.resolve() }
    @objc public func setProceedButtonBackgroundColor(_ call: CAPPluginCall) { guard let v = call.getString("color") else { call.reject("color is required"); return }; implementation.setProceedButtonBackgroundColor(v); call.resolve() }
    @objc public func setProceedButtonTextColor(_ call: CAPPluginCall) { guard let v = call.getString("color") else { call.reject("color is required"); return }; implementation.setProceedButtonTextColor(v); call.resolve() }
    @objc public func setPhotoIdentRetakeButtonBackgroundColor(_ call: CAPPluginCall) { guard let v = call.getString("color") else { call.reject("color is required"); return }; implementation.setPhotoIdentRetakeButtonBackgroundColor(v); call.resolve() }
    @objc public func setPhotoIdentRetakeButtonTextColor(_ call: CAPPluginCall) { guard let v = call.getString("color") else { call.reject("color is required"); return }; implementation.setPhotoIdentRetakeButtonTextColor(v); call.resolve() }
    @objc public func setTextFieldColor(_ call: CAPPluginCall) { guard let v = call.getString("color") else { call.reject("color is required"); return }; implementation.setTextFieldColor(v); call.resolve() }
    @objc public func setFailureColor(_ call: CAPPluginCall) { guard let v = call.getString("color") else { call.reject("color is required"); return }; implementation.setFailureColor(v); call.resolve() }
    @objc public func setSuccessColor(_ call: CAPPluginCall) { guard let v = call.getString("color") else { call.reject("color is required"); return }; implementation.setSuccessColor(v); call.resolve() }
    @objc public func setCqcOuterRingColor(_ call: CAPPluginCall) { guard let v = call.getString("color") else { call.reject("color is required"); return }; implementation.setCqcOuterRingColor(v); call.resolve() }
    @objc public func setCqcDefaultInnerRingColor(_ call: CAPPluginCall) { guard let v = call.getString("color") else { call.reject("color is required"); return }; implementation.setCqcDefaultInnerRingColor(v); call.resolve() }
    @objc public func setCqcPoorQualityInnerColor(_ call: CAPPluginCall) { guard let v = call.getString("color") else { call.reject("color is required"); return }; implementation.setCqcPoorQualityInnerColor(v); call.resolve() }
    @objc public func setCqcModerateQualityInnerColor(_ call: CAPPluginCall) { guard let v = call.getString("color") else { call.reject("color is required"); return }; implementation.setCqcModerateQualityInnerColor(v); call.resolve() }
    @objc public func setCqcExcellentQualityInnerColor(_ call: CAPPluginCall) { guard let v = call.getString("color") else { call.reject("color is required"); return }; implementation.setCqcExcellentQualityInnerColor(v); call.resolve() }
    @objc public func setFontNameRegular(_ call: CAPPluginCall) { guard let v = call.getString("fontName"), !v.isEmpty else { call.reject("fontName is required"); return }; implementation.setFontNameRegular(v); call.resolve() }
    @objc public func setFontNameMedium(_ call: CAPPluginCall) { guard let v = call.getString("fontName"), !v.isEmpty else { call.reject("fontName is required"); return }; implementation.setFontNameMedium(v); call.resolve() }
    @objc public func setFontNameLight(_ call: CAPPluginCall) { guard let v = call.getString("fontName"), !v.isEmpty else { call.reject("fontName is required"); return }; implementation.setFontNameLight(v); call.resolve() }

    // Start
    @objc public func startIdNowSdk(_ call: CAPPluginCall) {
        guard let token = call.getString("token"), !token.isEmpty else { call.reject("token is required"); return }
        implementation.startIdNowSdk(token: token, from: self.bridge?.viewController) { status, errorMessage in
            if status == "failed" {
                call.reject(errorMessage ?? "Unknown error")
            } else {
                call.resolve(["status": status])
            }
        }
    }
}
