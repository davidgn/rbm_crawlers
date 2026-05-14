package com.google.firebase.database.core;
/* loaded from: classes2.dex */
public final class Tag {
    private final long tagNumber;

    public Tag(long j5) {
        this.tagNumber = j5;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return obj != null && Tag.class == obj.getClass() && this.tagNumber == ((Tag) obj).tagNumber;
    }

    public long getTagNumber() {
        return this.tagNumber;
    }

    public int hashCode() {
        long j5 = this.tagNumber;
        return (int) (j5 ^ (j5 >>> 32));
    }

    public String toString() {
        return "Tag{tagNumber=" + this.tagNumber + '}';
    }
}
