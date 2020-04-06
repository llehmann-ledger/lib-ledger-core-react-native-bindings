// AUTOGENERATED FILE - DO NOT MODIFY!
// This file generated by Djinni from configuration.djinni

package co.ledger.core;

import java.util.concurrent.atomic.AtomicBoolean;

/** Available API to use with Stellar wallets */
public abstract class StellarConfiguration {
    public static final String HORIZON_EXPLORER_ENGINE = "HORIZON_EXPLORER_ENGINE";

    public static final String HORIZON_MAINNET_BLOCKCHAIN_EXPLORER_URL = "https://stellar.coin.ledger.com";

    public static final String HORIZON_TESTNET_BLOCKCHAIN_EXPLORER_URL = "https://horizon-testnet.stellar.org";


    private static final class CppProxy extends StellarConfiguration
    {
        private final long nativeRef;
        private final AtomicBoolean destroyed = new AtomicBoolean(false);

        private CppProxy(long nativeRef)
        {
            if (nativeRef == 0) throw new RuntimeException("nativeRef is zero");
            this.nativeRef = nativeRef;
        }

        private native void nativeDestroy(long nativeRef);
        public void destroy()
        {
            boolean destroyed = this.destroyed.getAndSet(true);
            if (!destroyed) nativeDestroy(this.nativeRef);
        }
        protected void finalize() throws java.lang.Throwable
        {
            destroy();
            super.finalize();
        }
    }
}
