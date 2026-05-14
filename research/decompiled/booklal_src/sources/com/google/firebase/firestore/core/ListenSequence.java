package com.google.firebase.firestore.core;
/* loaded from: classes2.dex */
public class ListenSequence {
    public static final long INVALID = -1;
    private long previousSequenceNumber;

    public ListenSequence(long j5) {
        this.previousSequenceNumber = j5;
    }

    public long next() {
        long j5 = this.previousSequenceNumber + 1;
        this.previousSequenceNumber = j5;
        return j5;
    }
}
