package com.google.firebase.firestore;
/* loaded from: classes2.dex */
public final class PersistentCacheSettings implements LocalCacheSettings {
    private final long sizeBytes;

    /* loaded from: classes2.dex */
    public static class Builder {
        private long sizeBytes;

        public PersistentCacheSettings build() {
            return new PersistentCacheSettings(this.sizeBytes);
        }

        public Builder setSizeBytes(long j5) {
            this.sizeBytes = j5;
            return this;
        }

        private Builder() {
            this.sizeBytes = 104857600L;
        }
    }

    public static Builder newBuilder() {
        return new Builder();
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return obj != null && PersistentCacheSettings.class == obj.getClass() && this.sizeBytes == ((PersistentCacheSettings) obj).sizeBytes;
    }

    public long getSizeBytes() {
        return this.sizeBytes;
    }

    public int hashCode() {
        long j5 = this.sizeBytes;
        return (int) (j5 ^ (j5 >>> 32));
    }

    public String toString() {
        return "PersistentCacheSettings{sizeBytes=" + this.sizeBytes + '}';
    }

    private PersistentCacheSettings(long j5) {
        this.sizeBytes = j5;
    }
}
