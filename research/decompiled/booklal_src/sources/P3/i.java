package P3;

import z3.AbstractC1037o;
import z3.AbstractC1038p;
/* loaded from: classes2.dex */
public final class i extends AbstractC1038p {

    /* renamed from: b  reason: collision with root package name */
    public static final l f2244b = new l("RxNewThreadScheduler", Math.max(1, Math.min(10, Integer.getInteger("rx2.newthread-priority", 5).intValue())), false);

    /* renamed from: a  reason: collision with root package name */
    public final l f2245a = f2244b;

    @Override // z3.AbstractC1038p
    public final AbstractC1037o a() {
        return new j(this.f2245a);
    }
}
