package h1;

import android.os.Process;
import android.os.StrictMode;
import android.util.Log;
/* renamed from: h1.a  reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0445a extends Thread {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ b f7606a;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C0445a(b bVar, Runnable runnable, String str) {
        super(runnable, str);
        this.f7606a = bVar;
    }

    @Override // java.lang.Thread, java.lang.Runnable
    public final void run() {
        Process.setThreadPriority(9);
        if (this.f7606a.f7608b) {
            StrictMode.setThreadPolicy(new StrictMode.ThreadPolicy.Builder().detectNetwork().penaltyDeath().build());
        }
        try {
            super.run();
        } catch (Throwable th) {
            if (Log.isLoggable("GlideExecutor", 6)) {
                Log.e("GlideExecutor", "Request threw uncaught throwable", th);
            }
        }
    }
}
