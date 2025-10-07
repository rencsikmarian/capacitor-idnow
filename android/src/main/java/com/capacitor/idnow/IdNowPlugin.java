package com.capacitor.idnow;

import com.getcapacitor.JSObject;
import com.getcapacitor.Plugin;
import com.getcapacitor.PluginCall;
import com.getcapacitor.PluginMethod;
import com.getcapacitor.annotation.CapacitorPlugin;

@CapacitorPlugin(name = "IdNow")
public class IdNowPlugin extends Plugin {

    private IdNow implementation = new IdNow();

    @PluginMethod
    public void startIdNowSdk(PluginCall call) {
        String token = call.getString("token");
        if (token == null || token.isEmpty()) {
            call.reject("token is required");
            return;
        }
        String language = call.getString("language");
        if (language != null && !language.isEmpty()) {
            implementation.setIdNowLanguage(language);
        }
        implementation.startIdNowSdk(getActivity(), token, (status, message) -> {
            JSObject ret = new JSObject();
            ret.put("status", status);
            if (message != null) ret.put("message", message);
            if ("failed".equals(status)) {
                call.reject(message != null ? message : "Unknown error");
            } else {
                call.resolve(ret);
            }
        });
    }
}
