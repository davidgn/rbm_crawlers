package S1;

import android.os.Handler;
import java.util.concurrent.Executor;
import java.util.concurrent.ExecutorService;
/* loaded from: classes.dex */
public final class q implements Executor {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ int f2578a;

    /* renamed from: b  reason: collision with root package name */
    public final Object f2579b;

    public /* synthetic */ q(Object obj, int i) {
        this.f2578a = i;
        this.f2579b = obj;
    }

    @Override // java.util.concurrent.Executor
    public final void execute(Runnable runnable) {
        switch (this.f2578a) {
            case 0:
                ((ExecutorService) this.f2579b).execute(new p(runnable, 0));
                return;
            default:
                ((Handler) ((J2.e) this.f2579b).f1189c).post(runnable);
                return;
        }
    }
}
