package r0;
/* renamed from: r0.a  reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0795a {

    /* renamed from: a  reason: collision with root package name */
    public final boolean f9948a;

    public C0795a(boolean z4) {
        this.f9948a = z4;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof C0795a) {
            C0795a c0795a = (C0795a) obj;
            c0795a.getClass();
            return this.f9948a == c0795a.f9948a;
        }
        return false;
    }

    public final int hashCode() {
        return Boolean.hashCode(this.f9948a) + 1169068184;
    }

    public final String toString() {
        return "GetTopicsRequest: adsSdkName=com.google.android.gms.ads, shouldRecordObservation=" + this.f9948a;
    }
}
