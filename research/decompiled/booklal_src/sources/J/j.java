package J;

import S1.p;
import java.util.concurrent.ThreadFactory;
/* loaded from: classes.dex */
public final class j implements ThreadFactory {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ int f1170a;

    public /* synthetic */ j(int i) {
        this.f1170a = i;
    }

    @Override // java.util.concurrent.ThreadFactory
    public final Thread newThread(Runnable runnable) {
        switch (this.f1170a) {
            case 0:
                return new i(runnable);
            case 1:
                return new Thread(new p(runnable, 1), "glide-active-resources");
            default:
                return new P3.k(runnable);
        }
    }
}
