package G2;

import com.google.android.gms.tasks.TaskCompletionSource;
/* loaded from: classes2.dex */
public abstract class A implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    private final TaskCompletionSource f936a;

    public A() {
        this.f936a = null;
    }

    public void a(Exception exc) {
        TaskCompletionSource taskCompletionSource = this.f936a;
        if (taskCompletionSource != null) {
            taskCompletionSource.trySetException(exc);
        }
    }

    public abstract void b();

    public final TaskCompletionSource c() {
        return this.f936a;
    }

    @Override // java.lang.Runnable
    public final void run() {
        try {
            b();
        } catch (Exception e5) {
            a(e5);
        }
    }

    public A(TaskCompletionSource taskCompletionSource) {
        this.f936a = taskCompletionSource;
    }
}
