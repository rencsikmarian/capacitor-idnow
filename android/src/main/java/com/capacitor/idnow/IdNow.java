package com.capacitor.idnow;

import android.app.Activity;
import android.content.Context;
import android.util.Log;

import de.idnow.sdk.IDnowSDK;

public class IdNow {

    private static final String TAG = "CapacitorIdNow";

    private String companyId = "";
    private boolean showVideoOverviewCheck = false;
    private boolean showErrorSuccessScreen = false;
    private boolean appGoogleRating = false;
    private String language = "en"; // currently unused by legacy SDK usage
    private boolean isTestEnvironment = false;

    public void setCompanyId(String companyId) {
        this.companyId = companyId != null ? companyId : "";
    }

    public void setShowVideoOverviewCheck(boolean value) {
        this.showVideoOverviewCheck = value;
    }

    public void setShowErrorSuccessScreen(boolean value) {
        this.showErrorSuccessScreen = value;
    }

    public void setAppGoogleRating(boolean value) {
        this.appGoogleRating = value;
    }

    public void setIdNowLanguage(String language) {
        this.language = language != null ? language : "en";
    }

    public void isTestEnvironment(boolean value) {
        this.isTestEnvironment = value;
    }

    public void startIdNowSdk(Activity activity, String token) {
        if (activity == null) {
            Log.e(TAG, "Activity is null");
            return;
        }
        if (companyId == null || companyId.isEmpty()) {
            Log.e(TAG, "Company ID is empty");
            return;
        }
        if (token == null || token.isEmpty()) {
            Log.e(TAG, "Token is empty");
            return;
        }

        try {
            Context context = activity.getApplicationContext();
            IDnowSDK.getInstance().initialize(activity, companyId);
            IDnowSDK.setShowVideoOverviewCheck(showVideoOverviewCheck, context);
            IDnowSDK.setShowErrorSuccessScreen(showErrorSuccessScreen, context);
            IDnowSDK.setApp_GoogleRating(appGoogleRating);
            IDnowSDK.setEnvironment(IDnowSDK.Server.LIVE);
            if (isTestEnvironment) {
                IDnowSDK.setEnvironment(IDnowSDK.Server.TEST);
            }
            IDnowSDK.getInstance().start(token);
            // Optionally reset theme as in Cordova
            IDnowSDK.getInstance().getAppContext().setTheme(0);
        } catch (Exception e) {
            Log.e(TAG, "Error starting IDnow SDK", e);
        }
    }
}
