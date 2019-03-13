// AUTOGENERATED FILE - DO NOT MODIFY!
// This file generated by Djinni from callback.djinni

package com.ledger.reactnative;

import co.ledger.core.Error;
import co.ledger.core.RippleLikeTransaction;
import co.ledger.core.RippleLikeTransactionCallback;
import com.facebook.react.bridge.Promise;
import com.facebook.react.bridge.ReactApplicationContext;
import com.facebook.react.bridge.ReactContext;
import com.facebook.react.bridge.ReactContextBaseJavaModule;
import com.facebook.react.bridge.ReactMethod;
import com.facebook.react.bridge.ReadableArray;
import com.facebook.react.bridge.ReadableMap;
import com.facebook.react.bridge.ReadableNativeArray;
import com.facebook.react.bridge.ReadableNativeMap;
import com.facebook.react.bridge.WritableNativeArray;
import com.facebook.react.bridge.WritableNativeMap;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Map;
import java.util.Optional;
import java.util.UUID;

/** Callback triggered by main completed task, returning optional result of template type T. */
public class RCTCoreRippleLikeTransactionCallback extends RippleLikeTransactionCallback {
    public Promise promise;
    public ReactApplicationContext reactContext;
    public static RCTCoreRippleLikeTransactionCallback initWithPromise(Promise promise, ReactApplicationContext reactContext)
    {
        RCTCoreRippleLikeTransactionCallback callback = new RCTCoreRippleLikeTransactionCallback();
        callback.promise = promise;
        callback.reactContext = reactContext;
        return callback;
    }
    /**
     * Method triggered when main task complete.
     * @params result optional of type T, non null if main task failed
     * @params error optional of type Error, non null if main task succeeded
     */
    public void onCallback(RippleLikeTransaction result, Error error) {
        try
        {
            if (error != null && error.getMessage().length() > 0)
            {
                this.promise.reject(error.toString(), error.getMessage());
            }
            else
            {
                String result_uuid = UUID.randomUUID().toString();
                RCTCoreRippleLikeTransaction rctImpl_result = this.reactContext.getNativeModule(RCTCoreRippleLikeTransaction.class);
                rctImpl_result.getJavaObjects().put(result_uuid, result);
                WritableNativeMap converted_result = new WritableNativeMap();
                converted_result.putString("type","RCTCoreRippleLikeTransaction");
                converted_result.putString("uid",result_uuid);

                this.promise.resolve(converted_result);
            }
        }
        catch(Exception e)
        {
            this.promise.reject(e.toString(), e.getMessage());
        }
    }
}
