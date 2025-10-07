package com.capacitor.idnow;

import android.app.Activity;
import android.util.Log;
import de.idnow.core.IDnowConfig;
import de.idnow.core.IDnowSDK;

public class IdNow {

    private static final String TAG = "CapacitorIdNow";

    private String language = null;

    public void setIdNowLanguage(String language) {
        this.language = language;
    }

    public interface ResultCallback {
        void onResult(String status, String message);
    }

    public void startIdNowSdk(Activity activity, String token) {
        startIdNowSdk(activity, token, null);
    }

    public void startIdNowSdk(Activity activity, String token, ResultCallback callback) {
        if (activity == null) {
            Log.e(TAG, "Activity is null");
            if (callback != null) callback.onResult("failed", "Missing activity");
            return;
        }
        if (token == null || token.isEmpty()) {
            Log.e(TAG, "Token is empty");
            if (callback != null) callback.onResult("failed", "Missing token");
            return;
        }

        try {
            IDnowConfig.Builder builder = IDnowConfig.Builder.getInstance();
            if (language != null && !language.isEmpty()) {
                builder = builder.withLanguage(language);
            }
            IDnowConfig config = builder.build();

            IDnowSDK sdk = IDnowSDK.getInstance();
            sdk.initialize(activity, config);
            // Note: company id is not required in v5 AutoIdent flow; ident token is used
            sdk.startIdent(
                token,
                new IDnowSDK.IDnowResultListener() {
                    @Override
                    public void onIdentResult(IDnowResult result) {
                        Log.d(TAG, "IDnow result: " + result.getResultType());
                        if (callback == null) return;
                        switch (result.getResultType()) {
                            case FINISHED:
                                callback.onResult("completed", null);
                                break;
                            case CANCELLED:
                                callback.onResult("cancelled", result.getStatusCode());
                                break;
                            case ERROR:
                            default:
                                callback.onResult("failed", result.getStatusCode());
                                break;
                        }
                    }
                }
            );
        } catch (Exception e) {
            Log.e(TAG, "Error starting IDnow SDK", e);
            if (callback != null) callback.onResult("failed", e.getMessage());
        }
    }
}
