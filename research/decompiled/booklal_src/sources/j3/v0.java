package j3;
/* loaded from: classes2.dex */
public final class v0 implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    public final Runnable f8147a;

    /* renamed from: b  reason: collision with root package name */
    public boolean f8148b;

    /* renamed from: c  reason: collision with root package name */
    public boolean f8149c;

    public v0(Runnable runnable) {
        this.f8147a = runnable;
    }

    @Override // java.lang.Runnable
    public final void run() {
        if (this.f8148b) {
            return;
        }
        this.f8149c = true;
        this.f8147a.run();
    }
}
