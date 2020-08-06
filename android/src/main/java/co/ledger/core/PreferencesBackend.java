// AUTOGENERATED FILE - DO NOT MODIFY!
// This file generated by Djinni from preferences.djinni

package co.ledger.core;

import java.util.ArrayList;
import java.util.concurrent.atomic.AtomicBoolean;

/** Interface describing the behaviour of the backend used by Preferences. */
public abstract class PreferencesBackend {
    /**
     * Gets the value associated to the given key.
     * @param key The data key.
     * @return The value associated to the key if it exists, an empty option otherwise.
     */
    public abstract byte[] get(byte[] key);

    /**
     * Commit a change.
     * @param changes The list of changes to commit.
     * @return false if unsuccessful (might happen if the underlying DB was destroyed).
     */
    public abstract boolean commit(ArrayList<PreferencesChange> changes);

    /**
     * Turn encryption on for all future uses.
     * This method will set encryption on for all future values that will be persisted.
     * If this function is called on a plaintext storage (i.e. first encryption for
     * instance), it will also encrypt all data already present.
     * @param rng Random number generator used to generate the encryption salt.
     * @param password The new password.
     */
    public abstract void setEncryption(RandomNumberGenerator rng, String password);

    /**
     * Turn off encryption by disabling the use of the internal cipher. Data is left
     * untouched.
     * This method is suitable when you want to get back raw, encrypted data. If you want
     * to disable encryption in order to read clear data back without password, consider
     * the resetEncryption method instead.
     */
    public abstract void unsetEncryption();

    /**
     * Reset the encryption with a new password by first decrypting on the
     * fly with the old password the data present.
     * If the new password is an empty string, after this method is called, the database
     * is completely unciphered and no password is required to read from it.
     * @return true if the reset occurred correctly, false otherwise (e.g. trying to change
     * password with an old password but without a proper salt already persisted).
     */
    public abstract boolean resetEncryption(RandomNumberGenerator rng, String oldPassword, String newPassword);

    /**
     * Get encryption salt, if any.
     * @return the encryption salt if it exists, an empty string otherwise.
     */
    public abstract String getEncryptionSalt();

    /** Clear all preferences. */
    public abstract void clear();

    private static final class CppProxy extends PreferencesBackend
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
        public byte[] get(byte[] key)
        {
            assert !this.destroyed.get() : "trying to use a destroyed object";
            return native_get(this.nativeRef, key);
        }
        private native byte[] native_get(long _nativeRef, byte[] key);

        @Override
        public boolean commit(ArrayList<PreferencesChange> changes)
        {
            assert !this.destroyed.get() : "trying to use a destroyed object";
            return native_commit(this.nativeRef, changes);
        }
        private native boolean native_commit(long _nativeRef, ArrayList<PreferencesChange> changes);

        @Override
        public void setEncryption(RandomNumberGenerator rng, String password)
        {
            assert !this.destroyed.get() : "trying to use a destroyed object";
            native_setEncryption(this.nativeRef, rng, password);
        }
        private native void native_setEncryption(long _nativeRef, RandomNumberGenerator rng, String password);

        @Override
        public void unsetEncryption()
        {
            assert !this.destroyed.get() : "trying to use a destroyed object";
            native_unsetEncryption(this.nativeRef);
        }
        private native void native_unsetEncryption(long _nativeRef);

        @Override
        public boolean resetEncryption(RandomNumberGenerator rng, String oldPassword, String newPassword)
        {
            assert !this.destroyed.get() : "trying to use a destroyed object";
            return native_resetEncryption(this.nativeRef, rng, oldPassword, newPassword);
        }
        private native boolean native_resetEncryption(long _nativeRef, RandomNumberGenerator rng, String oldPassword, String newPassword);

        @Override
        public String getEncryptionSalt()
        {
            assert !this.destroyed.get() : "trying to use a destroyed object";
            return native_getEncryptionSalt(this.nativeRef);
        }
        private native String native_getEncryptionSalt(long _nativeRef);

        @Override
        public void clear()
        {
            assert !this.destroyed.get() : "trying to use a destroyed object";
            native_clear(this.nativeRef);
        }
        private native void native_clear(long _nativeRef);
    }
}
