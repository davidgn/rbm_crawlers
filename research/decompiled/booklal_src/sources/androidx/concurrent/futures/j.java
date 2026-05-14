package androidx.concurrent.futures;
/* loaded from: classes.dex */
public final class j {

    /* renamed from: a  reason: collision with root package name */
    public Object f3937a;

    /* renamed from: b  reason: collision with root package name */
    public m f3938b;

    /* renamed from: c  reason: collision with root package name */
    public o f3939c;

    /* renamed from: d  reason: collision with root package name */
    public boolean f3940d;

    public final void a(Object obj) {
        this.f3940d = true;
        m mVar = this.f3938b;
        if (mVar == null || !mVar.f3943b.set(obj)) {
            return;
        }
        this.f3937a = null;
        this.f3938b = null;
        this.f3939c = null;
    }

    public final void b(Throwable th) {
        this.f3940d = true;
        m mVar = this.f3938b;
        if (mVar == null || !mVar.f3943b.setException(th)) {
            return;
        }
        this.f3937a = null;
        this.f3938b = null;
        this.f3939c = null;
    }

    public final void finalize() {
        o oVar;
        m mVar = this.f3938b;
        if (mVar != null) {
            l lVar = mVar.f3943b;
            if (!lVar.isDone()) {
                lVar.setException(new N2.b("The completer object was garbage collected - this future would otherwise never complete. The tag was: " + this.f3937a, 3));
            }
        }
        if (this.f3940d || (oVar = this.f3939c) == null) {
            return;
        }
        oVar.set(null);
    }
}
