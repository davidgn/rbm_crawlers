package androidx.lifecycle;
/* loaded from: classes.dex */
public abstract class z {

    /* renamed from: a  reason: collision with root package name */
    public final C f4473a;

    /* renamed from: b  reason: collision with root package name */
    public boolean f4474b;

    /* renamed from: c  reason: collision with root package name */
    public int f4475c = -1;

    /* renamed from: d  reason: collision with root package name */
    public final /* synthetic */ A f4476d;

    public z(A a5, C c5) {
        this.f4476d = a5;
        this.f4473a = c5;
    }

    public final void b(boolean z4) {
        if (z4 == this.f4474b) {
            return;
        }
        this.f4474b = z4;
        int i = z4 ? 1 : -1;
        A a5 = this.f4476d;
        int i4 = a5.f4382c;
        a5.f4382c = i + i4;
        if (!a5.f4383d) {
            a5.f4383d = true;
            while (true) {
                try {
                    int i5 = a5.f4382c;
                    if (i4 == i5) {
                        break;
                    }
                    boolean z5 = i4 == 0 && i5 > 0;
                    boolean z6 = i4 > 0 && i5 == 0;
                    if (z5) {
                        a5.f();
                    } else if (z6) {
                        a5.g();
                    }
                    i4 = i5;
                } catch (Throwable th) {
                    a5.f4383d = false;
                    throw th;
                }
            }
            a5.f4383d = false;
        }
        if (this.f4474b) {
            a5.c(this);
        }
    }

    public void c() {
    }

    public boolean d(InterfaceC0267t interfaceC0267t) {
        return false;
    }

    public abstract boolean e();
}
