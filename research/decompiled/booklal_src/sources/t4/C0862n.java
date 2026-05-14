package t4;

import java.util.concurrent.atomic.AtomicIntegerFieldUpdater;
/* renamed from: t4.n  reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public class C0862n {

    /* renamed from: b  reason: collision with root package name */
    public static final /* synthetic */ AtomicIntegerFieldUpdater f10506b = AtomicIntegerFieldUpdater.newUpdater(C0862n.class, "_handled$volatile");
    private volatile /* synthetic */ int _handled$volatile;

    /* renamed from: a  reason: collision with root package name */
    public final Throwable f10507a;

    public C0862n(boolean z4, Throwable th) {
        this.f10507a = th;
        this._handled$volatile = z4 ? 1 : 0;
    }

    public final String toString() {
        return getClass().getSimpleName() + '[' + this.f10507a + ']';
    }
}
