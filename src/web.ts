import { WebPlugin } from '@capacitor/core';
import type { IdNowPlugin, StartResult } from './definitions';

export class IdNowWeb extends WebPlugin implements IdNowPlugin {
  async startIdNowSdk(_options: { token: string }): Promise<StartResult> {
    throw this.unimplemented('IDnow is not available on web.');
  }

  async setCompanyId(_options: { companyId: string }): Promise<void> {
    throw this.unimplemented('IDnow is not available on web.');
  }

  async setShowVideoOverviewCheck(_options: { enabled: boolean }): Promise<void> {
    throw this.unimplemented('IDnow is not available on web.');
  }

  async setShowErrorSuccessScreen(_options: { enabled: boolean }): Promise<void> {
    throw this.unimplemented('IDnow is not available on web.');
  }

  async setAppGoogleRating(_options: { rating: number }): Promise<void> {
    throw this.unimplemented('IDnow is not available on web.');
  }

  async setIdNowLanguage(_options: { language: string }): Promise<void> {
    throw this.unimplemented('IDnow is not available on web.');
  }

  async setDefaultTextColor(_options: { color: string }): Promise<void> {
    throw this.unimplemented('IDnow is not available on web.');
  }

  async presentModaly(_options: { enabled: boolean }): Promise<void> {
    throw this.unimplemented('IDnow is not available on web.');
  }

  async isTestEnvironment(_options: { enabled: boolean }): Promise<void> {
    throw this.unimplemented('IDnow is not available on web.');
  }

  async enableStatusBarStyleLightContent(_options: { enabled: boolean }): Promise<void> {
    throw this.unimplemented('IDnow is not available on web.');
  }

  async setPrimaryBrandColor(_options: { color: string }): Promise<void> {
    throw this.unimplemented('IDnow is not available on web.');
  }

  async setProceedButtonBackgroundColor(_options: { color: string }): Promise<void> {
    throw this.unimplemented('IDnow is not available on web.');
  }

  async setProceedButtonTextColor(_options: { color: string }): Promise<void> {
    throw this.unimplemented('IDnow is not available on web.');
  }

  async setPhotoIdentRetakeButtonBackgroundColor(_options: { color: string }): Promise<void> {
    throw this.unimplemented('IDnow is not available on web.');
  }

  async setPhotoIdentRetakeButtonTextColor(_options: { color: string }): Promise<void> {
    throw this.unimplemented('IDnow is not available on web.');
  }

  async setTextFieldColor(_options: { color: string }): Promise<void> {
    throw this.unimplemented('IDnow is not available on web.');
  }

  async setFailureColor(_options: { color: string }): Promise<void> {
    throw this.unimplemented('IDnow is not available on web.');
  }

  async setSuccessColor(_options: { color: string }): Promise<void> {
    throw this.unimplemented('IDnow is not available on web.');
  }

  async setCqcOuterRingColor(_options: { color: string }): Promise<void> {
    throw this.unimplemented('IDnow is not available on web.');
  }

  async setCqcDefaultInnerRingColor(_options: { color: string }): Promise<void> {
    throw this.unimplemented('IDnow is not available on web.');
  }

  async setCqcPoorQualityInnerColor(_options: { color: string }): Promise<void> {
    throw this.unimplemented('IDnow is not available on web.');
  }

  async setCqcModerateQualityInnerColor(_options: { color: string }): Promise<void> {
    throw this.unimplemented('IDnow is not available on web.');
  }

  async setCqcExcellentQualityInnerColor(_options: { color: string }): Promise<void> {
    throw this.unimplemented('IDnow is not available on web.');
  }

  async setFontNameRegular(_options: { fontName: string }): Promise<void> {
    throw this.unimplemented('IDnow is not available on web.');
  }

  async setFontNameMedium(_options: { fontName: string }): Promise<void> {
    throw this.unimplemented('IDnow is not available on web.');
  }

  async setFontNameLight(_options: { fontName: string }): Promise<void> {
    throw this.unimplemented('IDnow is not available on web.');
  }
}
