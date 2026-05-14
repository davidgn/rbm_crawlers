package com.google.protobuf;
/* loaded from: classes2.dex */
public enum A0 implements S {
    NULL_VALUE(0),
    UNRECOGNIZED(-1);
    

    /* renamed from: a  reason: collision with root package name */
    public final int f6594a;

    A0(int i) {
        this.f6594a = i;
    }

    @Override // com.google.protobuf.S
    public final int getNumber() {
        if (this != UNRECOGNIZED) {
            return this.f6594a;
        }
        throw new IllegalArgumentException("Can't get the number of an unknown enum value.");
    }
}
