// AUTOGENERATED FILE - DO NOT MODIFY!
// This file generated by Djinni from stellar_like_wallet.djinni

package com.ledger.reactnative;

import co.ledger.core.AmountCallback;
import co.ledger.core.BigIntCallback;
import co.ledger.core.BoolCallback;
import co.ledger.core.StellarLikeAccount;
import co.ledger.core.StellarLikeAccountSignerListCallback;
import co.ledger.core.StellarLikeFeeStatsCallback;
import co.ledger.core.StellarLikeTransactionBuilder;
import co.ledger.core.StringCallback;
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
import com.facebook.react.module.annotations.ReactModule;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Map;
import java.util.Optional;
import java.util.TimeZone;
import java.util.UUID;

@ReactModule(name = "RCTCoreStellarLikeAccount")
public class RCTCoreStellarLikeAccount extends ReactContextBaseJavaModule {

    private final ReactApplicationContext reactContext;
    private Map<String, StellarLikeAccount> javaObjects;
    public Map<String, StellarLikeAccount> getJavaObjects()
    {
        return javaObjects;
    }

    public RCTCoreStellarLikeAccount(ReactApplicationContext reactContext)
    {
        super(reactContext);
        this.reactContext = reactContext;
        this.javaObjects = new HashMap<String, StellarLikeAccount>();
    }

    @Override
    public String getName()
    {
        return "RCTCoreStellarLikeAccount";
    }
    @ReactMethod
    public void release(ReadableMap currentInstance, Promise promise)
    {
        String uid = currentInstance.getString("uid");
        if (uid.length() > 0)
        {
            this.javaObjects.remove(uid);
            promise.resolve(0);
        }
        else
        {
            promise.reject("Failed to release instance of RCTCoreStellarLikeAccount", "First parameter of RCTCoreStellarLikeAccount::release should be an instance of RCTCoreStellarLikeAccount");
        }
    }
    @ReactMethod
    public void log(Promise promise)
    {
        WritableNativeArray result = new WritableNativeArray();
        for (Map.Entry<String, StellarLikeAccount> elem : this.javaObjects.entrySet())
        {
            result.pushString(elem.getKey());
        }
        promise.resolve(result);
    }
    @ReactMethod
    public void flush(Promise promise)
    {
        this.javaObjects.clear();
        promise.resolve(0);
    }
    @ReactMethod
    public void isNull(ReadableMap currentInstance, Promise promise)
    {
        String uid = currentInstance.getString("uid");
        if (uid.length() > 0)
        {
            if (this.javaObjects.get(uid) == null)
            {
                promise.resolve(true);
                return;
            }
            else
            {
                promise.resolve(false);
                return;
            }
        }
        promise.resolve(true);
    }
    public static byte[] hexStringToByteArray(String hexString)
    {
        int hexStringLength = hexString.length();
        byte[] data = new byte[hexStringLength / 2];
        for (int i = 0; i < hexStringLength; i += 2)
        {
            data[i / 2] = (byte) ((Character.digit(hexString.charAt(i), 16) << 4) + Character.digit(hexString.charAt(i+1), 16));
        }
        return data;
    }
    static final String HEXES = "0123456789ABCDEF";
    public static String byteArrayToHexString( byte [] data)
    {
        if (data == null)
        {
            return null;
        }
        final StringBuilder hexStringBuilder = new StringBuilder( 2 * data.length );
        for ( final byte b : data )
        {
            hexStringBuilder.append(HEXES.charAt((b & 0xF0) >> 4)).append(HEXES.charAt((b & 0x0F)));
        }
        return hexStringBuilder.toString();
    }

    /**
     * Checks if the current account exists on the stellar Network. If it doesn't the account needs to be activated by
     * sending an account creation operation with an amount of at least the base reserve.
     * @return Callback with a boolean indicating if the account exists on the Stellar network or not.
     */
    @ReactMethod
    public void exists(ReadableMap currentInstance, Promise promise) {
        try
        {
            String sUid = currentInstance.getString("uid");

            StellarLikeAccount currentInstanceObj = this.javaObjects.get(sUid);

            RCTCoreBoolCallback javaParam_0 = RCTCoreBoolCallback.initWithPromise(promise, this.reactContext);
            currentInstanceObj.exists(javaParam_0);
        }
        catch(Exception e)
        {
            promise.reject(e.toString(), e.getMessage());
        }
    }
    /**
     * Create a new transaction builder to create new transaction
     * @return The transaction builder
     */
    @ReactMethod
    public void buildTransaction(ReadableMap currentInstance, Promise promise) {
        try
        {
            String sUid = currentInstance.getString("uid");

            StellarLikeAccount currentInstanceObj = this.javaObjects.get(sUid);

            StellarLikeTransactionBuilder javaResult = currentInstanceObj.buildTransaction();

            String javaResult_uuid = UUID.randomUUID().toString();
            RCTCoreStellarLikeTransactionBuilder rctImpl_javaResult = this.reactContext.getNativeModule(RCTCoreStellarLikeTransactionBuilder.class);
            rctImpl_javaResult.getJavaObjects().put(javaResult_uuid, javaResult);
            WritableNativeMap result = new WritableNativeMap();
            result.putString("type","RCTCoreStellarLikeTransactionBuilder");
            result.putString("uid",javaResult_uuid);

            promise.resolve(result);
        }
        catch(Exception e)
        {
            promise.reject(e.toString(), e.getMessage());
        }
    }
    /** Broadcast the given raw transaction to the network. */
    @ReactMethod
    public void broadcastRawTransaction(ReadableMap currentInstance, String tx, Promise promise) {
        try
        {
            String sUid = currentInstance.getString("uid");

            StellarLikeAccount currentInstanceObj = this.javaObjects.get(sUid);

            byte [] javaParam_0 = hexStringToByteArray(tx);

            RCTCoreStringCallback javaParam_1 = RCTCoreStringCallback.initWithPromise(promise, this.reactContext);
            currentInstanceObj.broadcastRawTransaction(javaParam_0, javaParam_1);
        }
        catch(Exception e)
        {
            promise.reject(e.toString(), e.getMessage());
        }
    }
    /** Get base reserve of the network */
    @ReactMethod
    public void getBaseReserve(ReadableMap currentInstance, Promise promise) {
        try
        {
            String sUid = currentInstance.getString("uid");

            StellarLikeAccount currentInstanceObj = this.javaObjects.get(sUid);

            RCTCoreAmountCallback javaParam_0 = RCTCoreAmountCallback.initWithPromise(promise, this.reactContext);
            currentInstanceObj.getBaseReserve(javaParam_0);
        }
        catch(Exception e)
        {
            promise.reject(e.toString(), e.getMessage());
        }
    }
    /** Get sequence number to be used in the next transaction */
    @ReactMethod
    public void getSequence(ReadableMap currentInstance, Promise promise) {
        try
        {
            String sUid = currentInstance.getString("uid");

            StellarLikeAccount currentInstanceObj = this.javaObjects.get(sUid);

            RCTCoreBigIntCallback javaParam_0 = RCTCoreBigIntCallback.initWithPromise(promise, this.reactContext);
            currentInstanceObj.getSequence(javaParam_0);
        }
        catch(Exception e)
        {
            promise.reject(e.toString(), e.getMessage());
        }
    }
    /** Get recommended fee */
    @ReactMethod
    public void getFeeStats(ReadableMap currentInstance, Promise promise) {
        try
        {
            String sUid = currentInstance.getString("uid");

            StellarLikeAccount currentInstanceObj = this.javaObjects.get(sUid);

            RCTCoreStellarLikeFeeStatsCallback javaParam_0 = RCTCoreStellarLikeFeeStatsCallback.initWithPromise(promise, this.reactContext);
            currentInstanceObj.getFeeStats(javaParam_0);
        }
        catch(Exception e)
        {
            promise.reject(e.toString(), e.getMessage());
        }
    }
    /** Get signers for this account */
    @ReactMethod
    public void getSigners(ReadableMap currentInstance, Promise promise) {
        try
        {
            String sUid = currentInstance.getString("uid");

            StellarLikeAccount currentInstanceObj = this.javaObjects.get(sUid);

            RCTCoreStellarLikeAccountSignerListCallback javaParam_0 = RCTCoreStellarLikeAccountSignerListCallback.initWithPromise(promise, this.reactContext);
            currentInstanceObj.getSigners(javaParam_0);
        }
        catch(Exception e)
        {
            promise.reject(e.toString(), e.getMessage());
        }
    }
}
