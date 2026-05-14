package P3;

import java.util.concurrent.ThreadFactory;
import java.util.concurrent.atomic.AtomicLong;
/* loaded from: classes2.dex */
public final class l extends AtomicLong implements ThreadFactory {

    /* renamed from: a  reason: collision with root package name */
    public final String f2249a;

    /* renamed from: b  reason: collision with root package name */
    public final int f2250b;

    /* renamed from: c  reason: collision with root package name */
    public final boolean f2251c;

    public l(String str) {
        this(str, 5, false);
    }

    @Override // java.util.concurrent.ThreadFactory
    public final Thread newThread(Runnable runnable) {
        String str = this.f2249a + '-' + incrementAndGet();
        Thread kVar = this.f2251c ? new k(str, runnable) : new Thread(runnable, str);
        kVar.setPriority(this.f2250b);
        kVar.setDaemon(true);
        return kVar;
    }

    @Override // java.util.concurrent.atomic.AtomicLong
    public final String toString() {
        return C.a.p(new StringBuilder("RxThreadFactory["), this.f2249a, "]");
    }

    public l(String str, int i, boolean z4) {
        this.f2249a = str;
        this.f2250b = i;
        this.f2251c = z4;
    }
}
