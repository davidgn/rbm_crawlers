package r0;

import e1.i;
/* renamed from: r0.c  reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0797c {

    /* renamed from: a  reason: collision with root package name */
    public final long f9950a;

    /* renamed from: b  reason: collision with root package name */
    public final long f9951b;

    /* renamed from: c  reason: collision with root package name */
    public final int f9952c;

    public C0797c(long j5, long j6, int i) {
        this.f9950a = j5;
        this.f9951b = j6;
        this.f9952c = i;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof C0797c) {
            C0797c c0797c = (C0797c) obj;
            return this.f9950a == c0797c.f9950a && this.f9951b == c0797c.f9951b && this.f9952c == c0797c.f9952c;
        }
        return false;
    }

    public final int hashCode() {
        int hashCode = Long.hashCode(this.f9951b);
        return Integer.hashCode(this.f9952c) + ((hashCode + (Long.hashCode(this.f9950a) * 31)) * 31);
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("TaxonomyVersion=");
        sb.append(this.f9950a);
        sb.append(", ModelVersion=");
        sb.append(this.f9951b);
        sb.append(", TopicCode=");
        return i.e("Topic { ", i.b(this.f9952c, " }", sb));
    }
}
