package p;

import android.os.Bundle;
/* loaded from: classes.dex */
public final class b implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ int f9797a;

    /* renamed from: b  reason: collision with root package name */
    public final /* synthetic */ Bundle f9798b;

    /* renamed from: c  reason: collision with root package name */
    public final /* synthetic */ f f9799c;

    public /* synthetic */ b(f fVar, Bundle bundle, int i) {
        this.f9797a = i;
        this.f9799c = fVar;
        this.f9798b = bundle;
    }

    @Override // java.lang.Runnable
    public final void run() {
        switch (this.f9797a) {
            case 0:
                this.f9799c.f9817b.onUnminimized(this.f9798b);
                return;
            case 1:
                this.f9799c.f9817b.onMessageChannelReady(this.f9798b);
                return;
            case 2:
                this.f9799c.f9817b.onWarmupCompleted(this.f9798b);
                return;
            default:
                this.f9799c.f9817b.onMinimized(this.f9798b);
                return;
        }
    }
}
