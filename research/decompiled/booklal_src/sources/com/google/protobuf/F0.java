package com.google.protobuf;
/* loaded from: classes2.dex */
public final class F0 {

    /* renamed from: a  reason: collision with root package name */
    public final InterfaceC0357t0 f6613a;

    /* renamed from: b  reason: collision with root package name */
    public final String f6614b;

    /* renamed from: c  reason: collision with root package name */
    public final Object[] f6615c;

    /* renamed from: d  reason: collision with root package name */
    public final int f6616d;

    public F0(InterfaceC0357t0 interfaceC0357t0, String str, Object[] objArr) {
        this.f6613a = interfaceC0357t0;
        this.f6614b = str;
        this.f6615c = objArr;
        char charAt = str.charAt(0);
        if (charAt < 55296) {
            this.f6616d = charAt;
            return;
        }
        int i = charAt & 8191;
        int i4 = 13;
        int i5 = 1;
        while (true) {
            int i6 = i5 + 1;
            char charAt2 = str.charAt(i5);
            if (charAt2 < 55296) {
                this.f6616d = i | (charAt2 << i4);
                return;
            }
            i |= (charAt2 & 8191) << i4;
            i4 += 13;
            i5 = i6;
        }
    }

    public final InterfaceC0357t0 a() {
        return this.f6613a;
    }

    public final Object[] b() {
        return this.f6615c;
    }

    public final String c() {
        return this.f6614b;
    }

    public final int d() {
        return (this.f6616d & 1) == 1 ? 1 : 2;
    }
}
