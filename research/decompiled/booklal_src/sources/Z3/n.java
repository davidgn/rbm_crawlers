package Z3;

import java.util.Iterator;
import java.util.List;
/* loaded from: classes2.dex */
public final class n implements r4.d {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ int f3500a;

    /* renamed from: b  reason: collision with root package name */
    public final Object f3501b;

    public /* synthetic */ n(Object obj, int i) {
        this.f3500a = i;
        this.f3501b = obj;
    }

    @Override // r4.d
    public final Iterator iterator() {
        switch (this.f3500a) {
            case 0:
                return ((List) this.f3501b).iterator();
            case 1:
                return new r4.c(this);
            default:
                return (Iterator) this.f3501b;
        }
    }
}
