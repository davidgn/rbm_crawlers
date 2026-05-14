package I;

import android.os.Handler;
import android.os.Looper;
import java.util.concurrent.Executor;
import java.util.concurrent.RejectedExecutionException;
/* loaded from: classes.dex */
public final class i implements Executor {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ int f1099a;

    /* renamed from: b  reason: collision with root package name */
    public final Handler f1100b;

    public i() {
        this.f1099a = 1;
        this.f1100b = new Handler(Looper.getMainLooper());
    }

    @Override // java.util.concurrent.Executor
    public final void execute(Runnable runnable) {
        switch (this.f1099a) {
            case 0:
                runnable.getClass();
                Handler handler = this.f1100b;
                if (handler.post(runnable)) {
                    return;
                }
                throw new RejectedExecutionException(handler + " is shutting down");
            default:
                this.f1100b.post(runnable);
                return;
        }
    }

    public i(Handler handler) {
        this.f1099a = 0;
        this.f1100b = handler;
    }
}
