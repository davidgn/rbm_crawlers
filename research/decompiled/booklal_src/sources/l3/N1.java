package l3;

import j3.AbstractC0499B;
import java.util.concurrent.atomic.AtomicBoolean;
/* loaded from: classes2.dex */
public final class N1 {

    /* renamed from: a  reason: collision with root package name */
    public final AbstractC0499B[] f9027a;

    /* renamed from: b  reason: collision with root package name */
    public final AtomicBoolean f9028b = new AtomicBoolean(false);

    static {
        new N1(new AbstractC0499B[0]);
    }

    public N1(AbstractC0499B[] abstractC0499BArr) {
        this.f9027a = abstractC0499BArr;
    }

    public final void a() {
        for (AbstractC0499B abstractC0499B : this.f9027a) {
            abstractC0499B.getClass();
        }
    }
}
