// AUTOGENERATED FILE - DO NOT MODIFY!
// This file generated by Djinni from stellar_like_wallet.djinni

package co.ledger.core;

import java.util.concurrent.atomic.AtomicBoolean;

public abstract class StellarLikeTransaction {
    public abstract byte[] toRawTransaction();

    /** Returns the payload which should be signed by the user in order to send the transaction. */
    public abstract byte[] toSignatureBase();

    /** Add a new signature to the transaction envelope */
    public abstract void putSignature(byte[] signature, Address address);

    /** Returns the author of the transaction */
    public abstract Address getSourceAccount();

    /** Returns the sequence of the source account used for this transaction */
    public abstract BigInt getSourceAccountSequence();

    /** Returns the fee paid for this transaction to be validated */
    public abstract Amount getFee();

    private static final class CppProxy extends StellarLikeTransaction
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
        public byte[] toRawTransaction()
        {
            assert !this.destroyed.get() : "trying to use a destroyed object";
            return native_toRawTransaction(this.nativeRef);
        }
        private native byte[] native_toRawTransaction(long _nativeRef);

        @Override
        public byte[] toSignatureBase()
        {
            assert !this.destroyed.get() : "trying to use a destroyed object";
            return native_toSignatureBase(this.nativeRef);
        }
        private native byte[] native_toSignatureBase(long _nativeRef);

        @Override
        public void putSignature(byte[] signature, Address address)
        {
            assert !this.destroyed.get() : "trying to use a destroyed object";
            native_putSignature(this.nativeRef, signature, address);
        }
        private native void native_putSignature(long _nativeRef, byte[] signature, Address address);

        @Override
        public Address getSourceAccount()
        {
            assert !this.destroyed.get() : "trying to use a destroyed object";
            return native_getSourceAccount(this.nativeRef);
        }
        private native Address native_getSourceAccount(long _nativeRef);

        @Override
        public BigInt getSourceAccountSequence()
        {
            assert !this.destroyed.get() : "trying to use a destroyed object";
            return native_getSourceAccountSequence(this.nativeRef);
        }
        private native BigInt native_getSourceAccountSequence(long _nativeRef);

        @Override
        public Amount getFee()
        {
            assert !this.destroyed.get() : "trying to use a destroyed object";
            return native_getFee(this.nativeRef);
        }
        private native Amount native_getFee(long _nativeRef);
    }
}
