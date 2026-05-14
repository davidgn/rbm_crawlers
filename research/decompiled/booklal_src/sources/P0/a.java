package P0;

import com.google.android.gms.fido.fido2.api.common.UserVerificationMethods;
/* loaded from: classes.dex */
public final class a {

    /* renamed from: a  reason: collision with root package name */
    public boolean f2200a;

    /* renamed from: b  reason: collision with root package name */
    public boolean f2201b;

    /* renamed from: c  reason: collision with root package name */
    public boolean f2202c;

    /* renamed from: d  reason: collision with root package name */
    public boolean f2203d;

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof a) {
            a aVar = (a) obj;
            return this.f2200a == aVar.f2200a && this.f2201b == aVar.f2201b && this.f2202c == aVar.f2202c && this.f2203d == aVar.f2203d;
        }
        return false;
    }

    /* JADX WARN: Type inference failed for: r1v0, types: [int, boolean] */
    public final int hashCode() {
        boolean z4 = this.f2201b;
        ?? r12 = this.f2200a;
        int i = r12;
        if (z4) {
            i = r12 + 16;
        }
        int i4 = i;
        if (this.f2202c) {
            i4 = i + UserVerificationMethods.USER_VERIFY_HANDPRINT;
        }
        return this.f2203d ? i4 + 4096 : i4;
    }

    public final String toString() {
        return "[ Connected=" + this.f2200a + " Validated=" + this.f2201b + " Metered=" + this.f2202c + " NotRoaming=" + this.f2203d + " ]";
    }
}
