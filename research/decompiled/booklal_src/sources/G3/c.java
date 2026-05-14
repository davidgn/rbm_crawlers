package G3;

import android.os.Binder;
import android.os.Process;
import java.util.concurrent.Callable;
import k0.RunnableC0544a;
/* loaded from: classes2.dex */
public final class c implements Callable, E3.c {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ int f974a;

    /* renamed from: b  reason: collision with root package name */
    public final Object f975b;

    public /* synthetic */ c(Object obj, int i) {
        this.f974a = i;
        this.f975b = obj;
    }

    @Override // E3.c
    public Object apply(Object obj) {
        return this.f975b;
    }

    @Override // java.util.concurrent.Callable
    public final Object call() {
        switch (this.f974a) {
            case 0:
                return this.f975b;
            case 1:
                synchronized (((Z0.c) this.f975b)) {
                    try {
                        Z0.c cVar = (Z0.c) this.f975b;
                        if (cVar.f3452n == null) {
                            return null;
                        }
                        cVar.w();
                        if (((Z0.c) this.f975b).n()) {
                            ((Z0.c) this.f975b).u();
                            ((Z0.c) this.f975b).f3453p = 0;
                        }
                        return null;
                    } finally {
                    }
                }
            default:
                RunnableC0544a runnableC0544a = (RunnableC0544a) this.f975b;
                runnableC0544a.f8331d.set(true);
                Object obj = null;
                try {
                    Process.setThreadPriority(10);
                    obj = runnableC0544a.f8333f.onLoadInBackground();
                    Binder.flushPendingCommands();
                    return obj;
                } catch (Throwable th) {
                    try {
                        runnableC0544a.f8330c.set(true);
                        throw th;
                    } finally {
                        runnableC0544a.a(obj);
                    }
                }
        }
    }
}
