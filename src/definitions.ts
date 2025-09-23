export interface StartResult {
  status: 'started' | 'completed' | 'cancelled' | 'failed';
  message?: string;
}

export interface IdNowPlugin {
  startIdNowSdk(options: { token: string }): Promise<StartResult>;

  setCompanyId(options: { companyId: string }): Promise<void>;
  setShowVideoOverviewCheck(options: { enabled: boolean }): Promise<void>;
  setShowErrorSuccessScreen(options: { enabled: boolean }): Promise<void>;
  setAppGoogleRating(options: { rating: number }): Promise<void>;
  setIdNowLanguage(options: { language: string }): Promise<void>;
  setDefaultTextColor(options: { color: string }): Promise<void>;
  presentModaly(options: { enabled: boolean }): Promise<void>;
  isTestEnvironment(options: { enabled: boolean }): Promise<void>;
  enableStatusBarStyleLightContent(options: { enabled: boolean }): Promise<void>;

  setPrimaryBrandColor(options: { color: string }): Promise<void>;
  setProceedButtonBackgroundColor(options: { color: string }): Promise<void>;
  setProceedButtonTextColor(options: { color: string }): Promise<void>;
  setPhotoIdentRetakeButtonBackgroundColor(options: { color: string }): Promise<void>;
  setPhotoIdentRetakeButtonTextColor(options: { color: string }): Promise<void>;
  setTextFieldColor(options: { color: string }): Promise<void>;
  setFailureColor(options: { color: string }): Promise<void>;
  setSuccessColor(options: { color: string }): Promise<void>;
  setCqcOuterRingColor(options: { color: string }): Promise<void>;
  setCqcDefaultInnerRingColor(options: { color: string }): Promise<void>;
  setCqcPoorQualityInnerColor(options: { color: string }): Promise<void>;
  setCqcModerateQualityInnerColor(options: { color: string }): Promise<void>;
  setCqcExcellentQualityInnerColor(options: { color: string }): Promise<void>;

  setFontNameRegular(options: { fontName: string }): Promise<void>;
  setFontNameMedium(options: { fontName: string }): Promise<void>;
  setFontNameLight(options: { fontName: string }): Promise<void>;
}
