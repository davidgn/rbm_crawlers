package h;

import java.util.concurrent.Executor;
/* loaded from: classes.dex */
public final class G implements Executor {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ int f7417a;

    @Override // java.util.concurrent.Executor
    public final void execute(Runnable runnable) {
        switch (this.f7417a) {
            case 0:
                new Thread(runnable).start();
                return;
            default:
                runnable.run();
                return;
        }
    }
}
