package u0;
/* loaded from: classes.dex */
public final class e0 {

    /* renamed from: a  reason: collision with root package name */
    public int f10802a;

    /* renamed from: b  reason: collision with root package name */
    public int f10803b;

    /* renamed from: c  reason: collision with root package name */
    public int f10804c;

    /* renamed from: d  reason: collision with root package name */
    public int f10805d;

    /* renamed from: e  reason: collision with root package name */
    public int f10806e;

    public final boolean a() {
        int i = this.f10802a;
        int i4 = 2;
        if ((i & 7) != 0) {
            int i5 = this.f10805d;
            int i6 = this.f10803b;
            if (((i5 > i6 ? 1 : i5 == i6 ? 2 : 4) & i) == 0) {
                return false;
            }
        }
        if ((i & 112) != 0) {
            int i7 = this.f10805d;
            int i8 = this.f10804c;
            if ((((i7 > i8 ? 1 : i7 == i8 ? 2 : 4) << 4) & i) == 0) {
                return false;
            }
        }
        if ((i & 1792) != 0) {
            int i9 = this.f10806e;
            int i10 = this.f10803b;
            if ((((i9 > i10 ? 1 : i9 == i10 ? 2 : 4) << 8) & i) == 0) {
                return false;
            }
        }
        if ((i & 28672) != 0) {
            int i11 = this.f10806e;
            int i12 = this.f10804c;
            if (i11 > i12) {
                i4 = 1;
            } else if (i11 != i12) {
                i4 = 4;
            }
            if ((i & (i4 << 12)) == 0) {
                return false;
            }
        }
        return true;
    }
}
