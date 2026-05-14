package A3;

import android.os.Handler;
import java.util.concurrent.TimeUnit;
import z3.AbstractC1037o;
import z3.AbstractC1038p;
/* loaded from: classes2.dex */
public final class e extends AbstractC1038p {

    /* renamed from: a  reason: collision with root package name */
    public final Handler f90a;

    public e(Handler handler) {
        this.f90a = handler;
    }

    @Override // z3.AbstractC1038p
    public final AbstractC1037o a() {
        return new c(this.f90a);
    }

    @Override // z3.AbstractC1038p
    public final B3.b c(Runnable runnable, TimeUnit timeUnit) {
        if (timeUnit != null) {
            Handler handler = this.f90a;
            d dVar = new d(handler, runnable);
            handler.postDelayed(dVar, timeUnit.toMillis(0L));
            return dVar;
        }
        throw new NullPointerException("unit == null");
    }
}
