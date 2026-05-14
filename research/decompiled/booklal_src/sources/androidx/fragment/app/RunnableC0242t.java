package androidx.fragment.app;
/* renamed from: androidx.fragment.app.t  reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class RunnableC0242t implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ int f4338a;

    /* renamed from: b  reason: collision with root package name */
    public final /* synthetic */ Fragment f4339b;

    public /* synthetic */ RunnableC0242t(Fragment fragment, int i) {
        this.f4338a = i;
        this.f4339b = fragment;
    }

    @Override // java.lang.Runnable
    public final void run() {
        switch (this.f4338a) {
            case 0:
                this.f4339b.startPostponedEnterTransition();
                return;
            default:
                this.f4339b.callStartTransitionListener(false);
                return;
        }
    }
}
