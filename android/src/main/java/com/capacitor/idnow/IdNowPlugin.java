package com.capacitor.idnow;

import android.content.Intent;

import com.getcapacitor.JSObject;
import com.getcapacitor.Plugin;
import com.getcapacitor.PluginCall;
import com.getcapacitor.PluginMethod;
import com.getcapacitor.annotation.CapacitorPlugin;

import de.idnow.sdk.IDnowSDK;

@CapacitorPlugin(name = "IdNow")
public class IdNowPlugin extends Plugin {

    private IdNow implementation = new IdNow();
    private PluginCall ongoingCall;

    // Setters / config
    @PluginMethod
    public void setCompanyId(PluginCall call) {
        String companyId = call.getString("companyId");
        if (companyId == null || companyId.isEmpty()) { call.reject("companyId is required"); return; }
        implementation.setCompanyId(companyId);
        call.resolve();
    }

    @PluginMethod
    public void setShowVideoOverviewCheck(PluginCall call) {
        Boolean enabled = call.getBoolean("enabled");
        if (enabled == null) { call.reject("enabled is required"); return; }
        implementation.setShowVideoOverviewCheck(enabled);
        call.resolve();
    }

    @PluginMethod
    public void setShowErrorSuccessScreen(PluginCall call) {
        Boolean enabled = call.getBoolean("enabled");
        if (enabled == null) { call.reject("enabled is required"); return; }
        implementation.setShowErrorSuccessScreen(enabled);
        call.resolve();
    }

    @PluginMethod
    public void setAppGoogleRating(PluginCall call) {
        Boolean enabled = call.getBoolean("rating");
        // our TS API defines rating:number; original Cordova uses boolean. Treat non-zero as true.
        if (enabled == null) {
            Integer rating = call.getInt("rating");
            if (rating == null) { call.reject("rating is required"); return; }
            implementation.setAppGoogleRating(rating != 0);
        } else {
            implementation.setAppGoogleRating(enabled);
        }
        call.resolve();
    }

    @PluginMethod
    public void setIdNowLanguage(PluginCall call) {
        String language = call.getString("language");
        if (language == null || language.isEmpty()) { call.reject("language is required"); return; }
        implementation.setIdNowLanguage(language);
        call.resolve();
    }

    @PluginMethod
    public void isTestEnvironment(PluginCall call) {
        Boolean enabled = call.getBoolean("enabled");
        if (enabled == null) { call.reject("enabled is required"); return; }
        implementation.isTestEnvironment(enabled);
        call.resolve();
    }

    // Start
    @PluginMethod
    public void startIdNowSdk(PluginCall call) {
        String token = call.getString("token");
        if (token == null || token.isEmpty()) { call.reject("token is required"); return; }
        ongoingCall = call;
        implementation.startIdNowSdk(getActivity(), token);
    }

    @Override
    protected void handleOnActivityResult(int requestCode, int resultCode, Intent data) {
        if (requestCode == IDnowSDK.REQUEST_ID_NOW_SDK && ongoingCall != null) {
            JSObject ret = new JSObject();
            switch (resultCode) {
                case IDnowSDK.RESULT_CODE_CANCEL:
                    ret.put("status", "cancelled");
                    ongoingCall.resolve(ret);
                    break;
                case IDnowSDK.RESULT_CODE_SUCCESS:
                    ret.put("status", "completed");
                    ongoingCall.resolve(ret);
                    break;
                case IDnowSDK.RESULT_CODE_FAILED:
                    String errorMessage = null;
                    if (data != null) {
                        errorMessage = data.getStringExtra(IDnowSDK.RESULT_DATA_ERROR);
                    }
                    if (errorMessage == null) { errorMessage = "Unknown error"; }
                    ongoingCall.reject(errorMessage);
                    break;
                default:
                    ret.put("status", "failed");
                    ongoingCall.resolve(ret);
                    break;
            }
            ongoingCall = null;
        }
        super.handleOnActivityResult(requestCode, resultCode, data);
    }
}
