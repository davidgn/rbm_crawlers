package l;
/* loaded from: classes.dex */
public final class L0 {

    /* renamed from: a  reason: collision with root package name */
    public int f8422a;

    /* renamed from: b  reason: collision with root package name */
    public int f8423b;

    /* renamed from: c  reason: collision with root package name */
    public int f8424c;

    /* renamed from: d  reason: collision with root package name */
    public int f8425d;

    /* renamed from: e  reason: collision with root package name */
    public int f8426e;

    /* renamed from: f  reason: collision with root package name */
    public int f8427f;

    /* renamed from: g  reason: collision with root package name */
    public boolean f8428g;

    /* renamed from: h  reason: collision with root package name */
    public boolean f8429h;

    public final void a(int i, int i4) {
        this.f8424c = i;
        this.f8425d = i4;
        this.f8429h = true;
        if (this.f8428g) {
            if (i4 != Integer.MIN_VALUE) {
                this.f8422a = i4;
            }
            if (i != Integer.MIN_VALUE) {
                this.f8423b = i;
                return;
            }
            return;
        }
        if (i != Integer.MIN_VALUE) {
            this.f8422a = i;
        }
        if (i4 != Integer.MIN_VALUE) {
            this.f8423b = i4;
        }
    }
}
