package h3;

import android.os.Message;
/* loaded from: classes2.dex */
public final class i implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ int f7718a;

    /* renamed from: b  reason: collision with root package name */
    public final /* synthetic */ Message f7719b;

    public /* synthetic */ i(Message message, int i) {
        this.f7718a = i;
        this.f7719b = message;
    }

    @Override // java.lang.Runnable
    public final void run() {
        switch (this.f7718a) {
            case 0:
                throw new AssertionError("Unknown handler message received: " + this.f7719b.what);
            default:
                throw new AssertionError("Unhandled stats message." + this.f7719b.what);
        }
    }
}
