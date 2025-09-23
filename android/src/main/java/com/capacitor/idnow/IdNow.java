package com.capacitor.idnow;

import com.getcapacitor.Logger;

public class IdNow {

    public String echo(String value) {
        Logger.info("Echo", value);
        return value;
    }
}
