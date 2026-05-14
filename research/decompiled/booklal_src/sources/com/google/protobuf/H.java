package com.google.protobuf;
/* loaded from: classes2.dex */
public final class H implements Comparable {

    /* renamed from: a  reason: collision with root package name */
    public final int f6621a;

    /* renamed from: b  reason: collision with root package name */
    public final m1 f6622b;

    /* renamed from: c  reason: collision with root package name */
    public final boolean f6623c;

    public H(T t2, int i, m1 m1Var, boolean z4, boolean z5) {
        this.f6621a = i;
        this.f6622b = m1Var;
        this.f6623c = z4;
    }

    @Override // java.lang.Comparable
    public final int compareTo(Object obj) {
        return this.f6621a - ((H) obj).f6621a;
    }
}
