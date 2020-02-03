// AUTOGENERATED FILE - DO NOT MODIFY!
// This file generated by Djinni from stellar_like_wallet.djinni

package co.ledger.core;

import java.util.concurrent.atomic.AtomicBoolean;

public abstract class StellarLikeWallet {
    public abstract void exists(String address, BoolCallback callback);

    private static final class CppProxy extends StellarLikeWallet
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

        @Override
        public void exists(String address, BoolCallback callback)
        {
            assert !this.destroyed.get() : "trying to use a destroyed object";
            native_exists(this.nativeRef, address, callback);
        }
        private native void native_exists(long _nativeRef, String address, BoolCallback callback);
    }
}