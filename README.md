# capacitor-idnow

IdNow Capacitor Plugin

## Install

```bash
npm install capacitor-idnow
npx cap sync
```

## Platform setup

### iOS (Info.plist)

Add the following usage descriptions to your app's Info.plist:

```xml
<key>NSCameraUsageDescription</key>
<string>Needs camera access for video streaming and identification.</string>
<key>NSMicrophoneUsageDescription</key>
<string>Needs microphone access for video identification.</string>
```

### Android (AndroidManifest.xml)

Ensure these permissions are declared in your app's AndroidManifest.xml:

```xml
<manifest xmlns:android="http://schemas.android.com/apk/res/android"
  package="com.yourorg.idnow">
  <uses-permission android:name="android.permission.CAMERA" />
  <uses-permission android:name="android.permission.RECORD_AUDIO" />
</manifest>
```

## API

<docgen-index>

* [`startIdNowSdk(...)`](#startidnowsdk)
* [`setCompanyId(...)`](#setcompanyid)
* [`setShowVideoOverviewCheck(...)`](#setshowvideooverviewcheck)
* [`setShowErrorSuccessScreen(...)`](#setshowerrorsuccessscreen)
* [`setAppGoogleRating(...)`](#setappgooglerating)
* [`setIdNowLanguage(...)`](#setidnowlanguage)
* [`setDefaultTextColor(...)`](#setdefaulttextcolor)
* [`presentModaly(...)`](#presentmodaly)
* [`isTestEnvironment(...)`](#istestenvironment)
* [`enableStatusBarStyleLightContent(...)`](#enablestatusbarstylelightcontent)
* [`setPrimaryBrandColor(...)`](#setprimarybrandcolor)
* [`setProceedButtonBackgroundColor(...)`](#setproceedbuttonbackgroundcolor)
* [`setProceedButtonTextColor(...)`](#setproceedbuttontextcolor)
* [`setPhotoIdentRetakeButtonBackgroundColor(...)`](#setphotoidentretakebuttonbackgroundcolor)
* [`setPhotoIdentRetakeButtonTextColor(...)`](#setphotoidentretakebuttontextcolor)
* [`setTextFieldColor(...)`](#settextfieldcolor)
* [`setFailureColor(...)`](#setfailurecolor)
* [`setSuccessColor(...)`](#setsuccesscolor)
* [`setCqcOuterRingColor(...)`](#setcqcouterringcolor)
* [`setCqcDefaultInnerRingColor(...)`](#setcqcdefaultinnerringcolor)
* [`setCqcPoorQualityInnerColor(...)`](#setcqcpoorqualityinnercolor)
* [`setCqcModerateQualityInnerColor(...)`](#setcqcmoderatequalityinnercolor)
* [`setCqcExcellentQualityInnerColor(...)`](#setcqcexcellentqualityinnercolor)
* [`setFontNameRegular(...)`](#setfontnameregular)
* [`setFontNameMedium(...)`](#setfontnamemedium)
* [`setFontNameLight(...)`](#setfontnamelight)
* [Interfaces](#interfaces)

</docgen-index>

<docgen-api>
<!--Update the source file JSDoc comments and rerun docgen to update the docs below-->

### startIdNowSdk(...)

```typescript
startIdNowSdk(options: { token: string; }) => Promise<StartResult>
```

| Param         | Type                            |
| ------------- | ------------------------------- |
| **`options`** | <code>{ token: string; }</code> |

**Returns:** <code>Promise&lt;<a href="#startresult">StartResult</a>&gt;</code>

--------------------


### setCompanyId(...)

```typescript
setCompanyId(options: { companyId: string; }) => Promise<void>
```

| Param         | Type                                |
| ------------- | ----------------------------------- |
| **`options`** | <code>{ companyId: string; }</code> |

--------------------


### setShowVideoOverviewCheck(...)

```typescript
setShowVideoOverviewCheck(options: { enabled: boolean; }) => Promise<void>
```

| Param         | Type                               |
| ------------- | ---------------------------------- |
| **`options`** | <code>{ enabled: boolean; }</code> |

--------------------


### setShowErrorSuccessScreen(...)

```typescript
setShowErrorSuccessScreen(options: { enabled: boolean; }) => Promise<void>
```

| Param         | Type                               |
| ------------- | ---------------------------------- |
| **`options`** | <code>{ enabled: boolean; }</code> |

--------------------


### setAppGoogleRating(...)

```typescript
setAppGoogleRating(options: { rating: number; }) => Promise<void>
```

| Param         | Type                             |
| ------------- | -------------------------------- |
| **`options`** | <code>{ rating: number; }</code> |

--------------------


### setIdNowLanguage(...)

```typescript
setIdNowLanguage(options: { language: string; }) => Promise<void>
```

| Param         | Type                               |
| ------------- | ---------------------------------- |
| **`options`** | <code>{ language: string; }</code> |

--------------------


### setDefaultTextColor(...)

```typescript
setDefaultTextColor(options: { color: string; }) => Promise<void>
```

| Param         | Type                            |
| ------------- | ------------------------------- |
| **`options`** | <code>{ color: string; }</code> |

--------------------


### presentModaly(...)

```typescript
presentModaly(options: { enabled: boolean; }) => Promise<void>
```

| Param         | Type                               |
| ------------- | ---------------------------------- |
| **`options`** | <code>{ enabled: boolean; }</code> |

--------------------


### isTestEnvironment(...)

```typescript
isTestEnvironment(options: { enabled: boolean; }) => Promise<void>
```

| Param         | Type                               |
| ------------- | ---------------------------------- |
| **`options`** | <code>{ enabled: boolean; }</code> |

--------------------


### enableStatusBarStyleLightContent(...)

```typescript
enableStatusBarStyleLightContent(options: { enabled: boolean; }) => Promise<void>
```

| Param         | Type                               |
| ------------- | ---------------------------------- |
| **`options`** | <code>{ enabled: boolean; }</code> |

--------------------


### setPrimaryBrandColor(...)

```typescript
setPrimaryBrandColor(options: { color: string; }) => Promise<void>
```

| Param         | Type                            |
| ------------- | ------------------------------- |
| **`options`** | <code>{ color: string; }</code> |

--------------------


### setProceedButtonBackgroundColor(...)

```typescript
setProceedButtonBackgroundColor(options: { color: string; }) => Promise<void>
```

| Param         | Type                            |
| ------------- | ------------------------------- |
| **`options`** | <code>{ color: string; }</code> |

--------------------


### setProceedButtonTextColor(...)

```typescript
setProceedButtonTextColor(options: { color: string; }) => Promise<void>
```

| Param         | Type                            |
| ------------- | ------------------------------- |
| **`options`** | <code>{ color: string; }</code> |

--------------------


### setPhotoIdentRetakeButtonBackgroundColor(...)

```typescript
setPhotoIdentRetakeButtonBackgroundColor(options: { color: string; }) => Promise<void>
```

| Param         | Type                            |
| ------------- | ------------------------------- |
| **`options`** | <code>{ color: string; }</code> |

--------------------


### setPhotoIdentRetakeButtonTextColor(...)

```typescript
setPhotoIdentRetakeButtonTextColor(options: { color: string; }) => Promise<void>
```

| Param         | Type                            |
| ------------- | ------------------------------- |
| **`options`** | <code>{ color: string; }</code> |

--------------------


### setTextFieldColor(...)

```typescript
setTextFieldColor(options: { color: string; }) => Promise<void>
```

| Param         | Type                            |
| ------------- | ------------------------------- |
| **`options`** | <code>{ color: string; }</code> |

--------------------


### setFailureColor(...)

```typescript
setFailureColor(options: { color: string; }) => Promise<void>
```

| Param         | Type                            |
| ------------- | ------------------------------- |
| **`options`** | <code>{ color: string; }</code> |

--------------------


### setSuccessColor(...)

```typescript
setSuccessColor(options: { color: string; }) => Promise<void>
```

| Param         | Type                            |
| ------------- | ------------------------------- |
| **`options`** | <code>{ color: string; }</code> |

--------------------


### setCqcOuterRingColor(...)

```typescript
setCqcOuterRingColor(options: { color: string; }) => Promise<void>
```

| Param         | Type                            |
| ------------- | ------------------------------- |
| **`options`** | <code>{ color: string; }</code> |

--------------------


### setCqcDefaultInnerRingColor(...)

```typescript
setCqcDefaultInnerRingColor(options: { color: string; }) => Promise<void>
```

| Param         | Type                            |
| ------------- | ------------------------------- |
| **`options`** | <code>{ color: string; }</code> |

--------------------


### setCqcPoorQualityInnerColor(...)

```typescript
setCqcPoorQualityInnerColor(options: { color: string; }) => Promise<void>
```

| Param         | Type                            |
| ------------- | ------------------------------- |
| **`options`** | <code>{ color: string; }</code> |

--------------------


### setCqcModerateQualityInnerColor(...)

```typescript
setCqcModerateQualityInnerColor(options: { color: string; }) => Promise<void>
```

| Param         | Type                            |
| ------------- | ------------------------------- |
| **`options`** | <code>{ color: string; }</code> |

--------------------


### setCqcExcellentQualityInnerColor(...)

```typescript
setCqcExcellentQualityInnerColor(options: { color: string; }) => Promise<void>
```

| Param         | Type                            |
| ------------- | ------------------------------- |
| **`options`** | <code>{ color: string; }</code> |

--------------------


### setFontNameRegular(...)

```typescript
setFontNameRegular(options: { fontName: string; }) => Promise<void>
```

| Param         | Type                               |
| ------------- | ---------------------------------- |
| **`options`** | <code>{ fontName: string; }</code> |

--------------------


### setFontNameMedium(...)

```typescript
setFontNameMedium(options: { fontName: string; }) => Promise<void>
```

| Param         | Type                               |
| ------------- | ---------------------------------- |
| **`options`** | <code>{ fontName: string; }</code> |

--------------------


### setFontNameLight(...)

```typescript
setFontNameLight(options: { fontName: string; }) => Promise<void>
```

| Param         | Type                               |
| ------------- | ---------------------------------- |
| **`options`** | <code>{ fontName: string; }</code> |

--------------------


### Interfaces


#### StartResult

| Prop          | Type                                                             |
| ------------- | ---------------------------------------------------------------- |
| **`status`**  | <code>'started' \| 'completed' \| 'cancelled' \| 'failed'</code> |
| **`message`** | <code>string</code>                                              |

</docgen-api>
