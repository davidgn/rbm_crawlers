package E2;

import com.google.android.gms.tasks.TaskCompletionSource;
/* loaded from: classes2.dex */
public abstract class g implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    public final TaskCompletionSource f729a;

    public g() {
        this.f729a = null;
    }

    public abstract void a();

    @Override // java.lang.Runnable
    public final void run() {
        try {
            a();
        } catch (Exception e5) {
            TaskCompletionSource taskCompletionSource = this.f729a;
            if (taskCompletionSource != null) {
                taskCompletionSource.trySetException(e5);
            }
        }
    }

    public g(TaskCompletionSource taskCompletionSource) {
        this.f729a = taskCompletionSource;
    }
}
