import Foundation
import UIKit
#if canImport(IDnowSDK)
import IDnowSDK
#endif

@objc public class IdNow: NSObject {
    // Stored configuration (mirrors Cordova)
    private var companyId: String = ""
    private var showVideoOverviewCheck: Bool = false
    private var showErrorSuccessScreen: Bool = false
    private var language: String = "en"
    private var defaultTextColor: UIColor?
    private var primaryBrandColor: UIColor?
    private var proceedButtonBackgroundColor: UIColor?
    private var proceedButtonTextColor: UIColor?
    private var photoIdentRetakeButtonBackgroundColor: UIColor?
    private var photoIdentRetakeButtonTextColor: UIColor?
    private var textFieldColor: UIColor?
    private var failureColor: UIColor?
    private var successColor: UIColor?
    private var cqcOuterRingColor: UIColor?
    private var cqcDefaultInnerRingColor: UIColor?
    private var cqcPoorQualityInnerColor: UIColor?
    private var cqcModerateQualityInnerColor: UIColor?
    private var cqcExcellentQualityInnerColor: UIColor?
    private var fontNameRegular: String?
    private var fontNameMedium: String?
    private var fontNameLight: String?
    private var enableStatusBarLightContent: Bool?
    private var modalPresent: Bool?
    private var useTestEnvironment: Bool?

    // MARK: - Helpers
    private func color(from hex: String) -> UIColor? {
        var cString = hex.trimmingCharacters(in: .whitespacesAndNewlines).uppercased()
        if cString.hasPrefix("#") { cString.remove(at: cString.startIndex) }
        guard cString.count == 6 else { return nil }
        var rgbValue: UInt64 = 0
        Scanner(string: cString).scanHexInt64(&rgbValue)
        let r = CGFloat((rgbValue & 0xFF0000) >> 16) / 255.0
        let g = CGFloat((rgbValue & 0x00FF00) >> 8) / 255.0
        let b = CGFloat(rgbValue & 0x0000FF) / 255.0
        return UIColor(red: r, green: g, blue: b, alpha: 1.0)
    }

    // MARK: - Setters (called by plugin bridge)
    @objc public func setCompanyId(_ value: String) { companyId = value }
    @objc public func setShowVideoOverviewCheck(_ enabled: Bool) { showVideoOverviewCheck = enabled }
    @objc public func setShowErrorSuccessScreen(_ enabled: Bool) { showErrorSuccessScreen = enabled }
    @objc public func setIdNowLanguage(_ value: String) { language = value }
    @objc public func presentModaly(_ enabled: Bool) { modalPresent = enabled }
    @objc public func isTestEnvironment(_ enabled: Bool) { useTestEnvironment = enabled }
    @objc public func enableStatusBarStyleLightContent(_ enabled: Bool) { enableStatusBarLightContent = enabled }
    @objc public func setDefaultTextColor(_ hex: String) { defaultTextColor = color(from: hex) }
    @objc public func setPrimaryBrandColor(_ hex: String) { primaryBrandColor = color(from: hex) }
    @objc public func setProceedButtonBackgroundColor(_ hex: String) { proceedButtonBackgroundColor = color(from: hex) }
    @objc public func setProceedButtonTextColor(_ hex: String) { proceedButtonTextColor = color(from: hex) }
    @objc public func setPhotoIdentRetakeButtonBackgroundColor(_ hex: String) { photoIdentRetakeButtonBackgroundColor = color(from: hex) }
    @objc public func setPhotoIdentRetakeButtonTextColor(_ hex: String) { photoIdentRetakeButtonTextColor = color(from: hex) }
    @objc public func setTextFieldColor(_ hex: String) { textFieldColor = color(from: hex) }
    @objc public func setFailureColor(_ hex: String) { failureColor = color(from: hex) }
    @objc public func setSuccessColor(_ hex: String) { successColor = color(from: hex) }
    @objc public func setCqcOuterRingColor(_ hex: String) { cqcOuterRingColor = color(from: hex) }
    @objc public func setCqcDefaultInnerRingColor(_ hex: String) { cqcDefaultInnerRingColor = color(from: hex) }
    @objc public func setCqcPoorQualityInnerColor(_ hex: String) { cqcPoorQualityInnerColor = color(from: hex) }
    @objc public func setCqcModerateQualityInnerColor(_ hex: String) { cqcModerateQualityInnerColor = color(from: hex) }
    @objc public func setCqcExcellentQualityInnerColor(_ hex: String) { cqcExcellentQualityInnerColor = color(from: hex) }
    @objc public func setFontNameRegular(_ value: String) { fontNameRegular = value }
    @objc public func setFontNameMedium(_ value: String) { fontNameMedium = value }
    @objc public func setFontNameLight(_ value: String) { fontNameLight = value }
    @objc public func setAppGoogleRating(_ rating: Int) { /* no-op on iOS */ }

    // MARK: - Start SDK
    @objc public func startIdNowSdk(token: String, from viewController: UIViewController?, completion: @escaping (_ status: String, _ errorMessage: String?) -> Void) {
#if canImport(IDnowSDK)
        guard !companyId.isEmpty else { completion("failed", "Company ID is required"); return }
        guard !token.isEmpty else { completion("failed", "Token is required"); return }

        let settings = IDnowSettings(companyID: companyId)
        let appearance = IDnowAppearance.shared()

        if let v = defaultTextColor { appearance.defaultTextColor = v }
        if let v = primaryBrandColor { appearance.primaryBrandColor = v }
        if let v = proceedButtonBackgroundColor { appearance.proceedButtonBackgroundColor = v }
        if let v = proceedButtonTextColor { appearance.proceedButtonTextColor = v }
        if let v = photoIdentRetakeButtonBackgroundColor { appearance.photoIdentRetakeButtonBackgroundColor = v }
        if let v = photoIdentRetakeButtonTextColor { appearance.photoIdentRetakeButtonTextColor = v }
        if let v = textFieldColor { appearance.textFieldColor = v }
        if let v = failureColor { appearance.failureColor = v }
        if let v = successColor { appearance.successColor = v }
        if let v = cqcOuterRingColor { appearance.cqcOuterRingColor = v }
        if let v = cqcDefaultInnerRingColor { appearance.cqcDefaultInnerRingColor = v }
        if let v = cqcPoorQualityInnerColor { appearance.cqcPoorQualityInnerColor = v }
        if let v = cqcModerateQualityInnerColor { appearance.cqcModerateQualityInnerColor = v }
        if let v = cqcExcellentQualityInnerColor { appearance.cqcExcellentQualityInnerColor = v }
        if let v = fontNameRegular { appearance.fontNameRegular = v }
        if let v = fontNameMedium { appearance.fontNameMedium = v }
        if let v = fontNameLight { appearance.fontNameLight = v }
        if let v = enableStatusBarLightContent { appearance.enableStatusBarStyleLightContent = v }

        settings.companyID = companyId
        settings.showVideoOverviewCheck = showVideoOverviewCheck
        settings.showErrorSuccessScreen = showErrorSuccessScreen
        settings.transactionToken = token
        settings.userInterfaceLanguage = language
        // Mirror Cordova behavior: override to false after setting
        settings.showVideoOverviewCheck = false
        if let modal = modalPresent { settings.forceModalPresentation = modal }
        if let test = useTestEnvironment, test { settings.environment = .test } else { settings.environment = .live }

        let controller = IDnowController(settings: settings)
        controller.initialize { success, error, cancelByUser in
            if success {
                controller.startIdentification(from: viewController) { success, error, cancelByUser in
                    if success {
                        completion("completed", nil)
                    } else if cancelByUser {
                        completion("cancelled", nil)
                    } else if let err = error {
                        completion("failed", err.localizedDescription)
                    } else {
                        completion("failed", "Unknown error")
                    }
                }
            } else if let err = error {
                completion("failed", err.localizedDescription)
            } else {
                completion("failed", "Initialization failed")
            }
        }
#else
        completion("failed", "IDnowSDK not available in build environment. Integrate the CocoaPod in the host app and run via workspace.")
#endif
    }
}
