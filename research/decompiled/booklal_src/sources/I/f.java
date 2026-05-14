package I;
/* loaded from: classes.dex */
public final class f {

    /* renamed from: a  reason: collision with root package name */
    public boolean f1095a;

    /* renamed from: b  reason: collision with root package name */
    public e f1096b;

    /* renamed from: c  reason: collision with root package name */
    public boolean f1097c;

    public final void a(e eVar) {
        synchronized (this) {
            while (this.f1097c) {
                try {
                    try {
                        wait();
                    } catch (InterruptedException unused) {
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
            if (this.f1096b == eVar) {
                return;
            }
            this.f1096b = eVar;
            if (this.f1095a) {
                eVar.a();
            }
        }
    }
}
