package D4;

import java.util.concurrent.ThreadFactory;
import kotlin.jvm.internal.i;
/* loaded from: classes2.dex */
public final /* synthetic */ class b implements ThreadFactory {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ String f692a;

    /* renamed from: b  reason: collision with root package name */
    public final /* synthetic */ boolean f693b;

    public /* synthetic */ b(String str, boolean z4) {
        this.f692a = str;
        this.f693b = z4;
    }

    @Override // java.util.concurrent.ThreadFactory
    public final Thread newThread(Runnable runnable) {
        String name = this.f692a;
        i.f(name, "$name");
        Thread thread = new Thread(runnable, name);
        thread.setDaemon(this.f693b);
        return thread;
    }
}
