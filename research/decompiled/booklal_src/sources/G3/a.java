package G3;

import P3.o;
import android.os.Trace;
import androidx.emoji2.text.j;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.concurrent.ScheduledThreadPoolExecutor;
/* loaded from: classes2.dex */
public final class a implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ int f971a;

    public /* synthetic */ a(int i) {
        this.f971a = i;
    }

    private final void a() {
    }

    @Override // java.lang.Runnable
    public final void run() {
        switch (this.f971a) {
            case 0:
                return;
            case 1:
                Iterator it = new ArrayList(o.f2264d.keySet()).iterator();
                while (it.hasNext()) {
                    ScheduledThreadPoolExecutor scheduledThreadPoolExecutor = (ScheduledThreadPoolExecutor) it.next();
                    if (scheduledThreadPoolExecutor.isShutdown()) {
                        o.f2264d.remove(scheduledThreadPoolExecutor);
                    } else {
                        scheduledThreadPoolExecutor.purge();
                    }
                }
                return;
            default:
                try {
                    int i = I.o.f1105a;
                    Trace.beginSection("EmojiCompat.EmojiCompatInitializer.run");
                    if (j.f4081j != null) {
                        j.a().c();
                    }
                    Trace.endSection();
                    return;
                } catch (Throwable th) {
                    int i4 = I.o.f1105a;
                    Trace.endSection();
                    throw th;
                }
        }
    }

    public String toString() {
        switch (this.f971a) {
            case 0:
                return "EmptyRunnable";
            default:
                return super.toString();
        }
    }
}
