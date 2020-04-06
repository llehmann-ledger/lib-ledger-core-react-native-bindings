// AUTOGENERATED FILE - DO NOT MODIFY!
// This file generated by Djinni from wallet.djinni

package co.ledger.core;

import java.util.concurrent.atomic.AtomicBoolean;

/**Class representing a Cosmos reward */
public abstract class CosmosLikeReward {
    public abstract String getDelegatorAddress();

    public abstract String getValidatorAddress();

    public abstract Amount getRewardAmount();

    private static final class CppProxy extends CosmosLikeReward
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
        public String getDelegatorAddress()
        {
            assert !this.destroyed.get() : "trying to use a destroyed object";
            return native_getDelegatorAddress(this.nativeRef);
        }
        private native String native_getDelegatorAddress(long _nativeRef);

        @Override
        public String getValidatorAddress()
        {
            assert !this.destroyed.get() : "trying to use a destroyed object";
            return native_getValidatorAddress(this.nativeRef);
        }
        private native String native_getValidatorAddress(long _nativeRef);

        @Override
        public Amount getRewardAmount()
        {
            assert !this.destroyed.get() : "trying to use a destroyed object";
            return native_getRewardAmount(this.nativeRef);
        }
        private native Amount native_getRewardAmount(long _nativeRef);
    }
}
