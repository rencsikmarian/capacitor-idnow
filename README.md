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

Ensure these permissions and features are declared in your app's AndroidManifest.xml:

```xml
<manifest xmlns:android="http://schemas.android.com/apk/res/android"
  package="com.yourorg.idnow">
  <uses-permission android:name="android.permission.CAMERA" />
  <uses-permission android:name="android.permission.INTERNET" />
  <uses-permission android:name="android.permission.FLASHLIGHT" />
  <uses-permission android:name="android.permission.ACCESS_NETWORK_STATE" />
  <uses-permission android:name="android.permission.NFC" />
  <uses-permission android:name="android.permission.FOREGROUND_SERVICE" />
  <!-- Android 13 Permissions -->
  <uses-permission android:name="android.permission.POST_NOTIFICATIONS" />
  <!-- Android 14 Permissions -->
  <uses-permission android:name="android.permission.FOREGROUND_SERVICE_MEDIA_PROJECTION" />

  <!-- Features -->
  <uses-feature android:name="android.hardware.camera" android:required="true" />
  <uses-feature android:name="android.hardware.camera.autofocus" android:required="false" />
  <uses-feature android:glEsVersion="0x00020000" android:required="true" />
  <uses-feature android:name="android.hardware.nfc" android:required="false" />
</manifest>
```

#### Android minimum SDK

This plugin (via the IDnow SDK) requires your app module to use a minimum SDK of 24 or higher.

```groovy
android {
    defaultConfig {
        minSdkVersion 24
    }
}
```

## API

<docgen-index>

* [`startIdNowSdk(...)`](#startidnowsdk)
* [Interfaces](#interfaces)

</docgen-index>

<docgen-api>
<!--Update the source file JSDoc comments and rerun docgen to update the docs below-->

### startIdNowSdk(...)

```typescript
startIdNowSdk(options: { token: string; language?: string; }) => Promise<StartResult>
```

| Param         | Type                                               |
| ------------- | -------------------------------------------------- |
| **`options`** | <code>{ token: string; language?: string; }</code> |

**Returns:** <code>Promise&lt;<a href="#startresult">StartResult</a>&gt;</code>

--------------------


### Interfaces


#### StartResult

| Prop          | Type                                                             |
| ------------- | ---------------------------------------------------------------- |
| **`status`**  | <code>'started' \| 'completed' \| 'cancelled' \| 'failed'</code> |
| **`message`** | <code>string</code>                                              |

</docgen-api>
