package m;

import java.util.concurrent.Executor;
/* renamed from: m.a  reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final /* synthetic */ class ExecutorC0722a implements Executor {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ int f9381a;

    @Override // java.util.concurrent.Executor
    public final void execute(Runnable runnable) {
        switch (this.f9381a) {
            case 0:
                C0723b.Y().f9384b.f9387c.execute(runnable);
                return;
            default:
                runnable.run();
                return;
        }
    }
}
