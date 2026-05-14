package e1;

import java.security.MessageDigest;
/* renamed from: e1.d  reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0395d implements b1.e {

    /* renamed from: b  reason: collision with root package name */
    public final b1.e f7057b;

    /* renamed from: c  reason: collision with root package name */
    public final b1.e f7058c;

    public C0395d(b1.e eVar, b1.e eVar2) {
        this.f7057b = eVar;
        this.f7058c = eVar2;
    }

    @Override // b1.e
    public final void a(MessageDigest messageDigest) {
        this.f7057b.a(messageDigest);
        this.f7058c.a(messageDigest);
    }

    @Override // b1.e
    public final boolean equals(Object obj) {
        if (obj instanceof C0395d) {
            C0395d c0395d = (C0395d) obj;
            return this.f7057b.equals(c0395d.f7057b) && this.f7058c.equals(c0395d.f7058c);
        }
        return false;
    }

    @Override // b1.e
    public final int hashCode() {
        return this.f7058c.hashCode() + (this.f7057b.hashCode() * 31);
    }

    public final String toString() {
        return "DataCacheKey{sourceKey=" + this.f7057b + ", signature=" + this.f7058c + '}';
    }
}
