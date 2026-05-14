package com.google.firebase.firestore;
/* loaded from: classes2.dex */
public final class MemoryLruGcSettings implements MemoryGarbageCollectorSettings {
    private long sizeBytes;

    /* loaded from: classes2.dex */
    public static class Builder {
        private long sizeBytes;

        public MemoryLruGcSettings build() {
            return new MemoryLruGcSettings(this.sizeBytes);
        }

        public void setSizeBytes(long j5) {
            this.sizeBytes = j5;
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
        return obj != null && MemoryLruGcSettings.class == obj.getClass() && this.sizeBytes == ((MemoryLruGcSettings) obj).sizeBytes;
    }

    public long getSizeBytes() {
        return this.sizeBytes;
    }

    public int hashCode() {
        long j5 = this.sizeBytes;
        return (int) (j5 ^ (j5 >>> 32));
    }

    public String toString() {
        return "MemoryLruGcSettings{cacheSize=" + getSizeBytes() + "}";
    }

    private MemoryLruGcSettings(long j5) {
        this.sizeBytes = j5;
    }
}
